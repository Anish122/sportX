// JavaScript Document
/* ------------------------------------------------------------------------
	Class: prettyPhoto
	Use: Lightbox clone for jQuery
	Author: Stephane Caron
	Version: 1.0
------------------------------------------------------------------------- */

	$(document).ready(function(){
		prettyPhoto.init();
	});

	prettyPhoto = {
		options : {
			'animationSpeed' : 'fast', /* fast/normal/slow */
			'padding' : 40 /* padding for each side of the picture */
		},
		init : function(){
			// Find all the images to overlay
			prettyPhoto.imagesArray = [];
			$("a[rel^='prettyOverlay']").each(function(){
				prettyPhoto.imagesArray[prettyPhoto.imagesArray.length] = this;
				$(this).bind('click',function(){
					prettyPhoto.open(this); return false;
				});
			});
		},
		open : function(caller) {
			prettyPhoto.caller = caller;
			
			// Find out if the picture is part of a set
			theRel = $(caller).attr('rel');
			galleryRegExp = /\[(?:.*)\]/;
			theGallery = galleryRegExp.exec(theRel);
			
			// Calculate the number of items in the set, and the position of the clicked picture.
			prettyPhoto.setCount = 0; /* Total images in the set */
			prettyPhoto.setPosition = 0; /* Position in the set */
			prettyPhoto.arrayPosition = 0; /* Total position in the array */
			prettyPhoto.isSet = false;
			for (i = 0; i < prettyPhoto.imagesArray.length; i++){
				if($(prettyPhoto.imagesArray[i]).attr('rel').indexOf(theGallery) != -1){
					prettyPhoto.setCount++;
					if(prettyPhoto.setCount > 1) prettyPhoto.isSet = true;

					if($(prettyPhoto.imagesArray[i]).attr('href') == $(caller).attr('href')){
						prettyPhoto.setPosition = prettyPhoto.setCount;
						prettyPhoto.arrayPosition = i;
					};
				};
			};
			
			prettyPhoto.buildOverlay(prettyPhoto.isSet);

			// Display the current position
			$('div.pictureHolder span.currentText').html('<span>' + prettyPhoto.setPosition + '</span>' + '/' + prettyPhoto.setCount);

			// Position the picture in the center of the viewing area
			prettyPhoto.centerPicture();
			
			// Fade out the current picture
			$('div.pictureHolder #fullResImage').fadeTo(prettyPhoto.options['animationSpeed'],0,function(){
				$('.loaderIcon').show();

				// Preload the neighbour images
				prettyPhoto.preload();
			});
		},
		next : function(){
			// Change the current position
			prettyPhoto.arrayPosition++;
			prettyPhoto.setPosition++;

			// Fade out the current picture
			$('div.pictureHolder #fullResImage').fadeTo(prettyPhoto.options['animationSpeed'],0,function(){
				$('.loaderIcon').show();
				
				// Preload the neighbour images
				prettyPhoto.preload();
			});
			
			$('div.pictureHolder .hoverContainer').fadeOut(prettyPhoto.options['animationSpeed']);
			$('div.pictureHolder .details').fadeOut(prettyPhoto.options['animationSpeed'],function(){
				prettyPhoto.checkPosition();
			});
		},
		previous: function(){
			// Change the current position
			prettyPhoto.arrayPosition--;
			prettyPhoto.setPosition--;

			// Fade out the current picture
			$('div.pictureHolder #fullResImage').fadeTo(prettyPhoto.options['animationSpeed'],0,function(){
				$('.loaderIcon').show();
				
				// Preload the image
				prettyPhoto.preload();
			});

			$('div.pictureHolder .hoverContainer').fadeOut(prettyPhoto.options['animationSpeed']);
			$('div.pictureHolder .details').fadeOut(prettyPhoto.options['animationSpeed'],function(){
				prettyPhoto.checkPosition();
			});
		},
		checkPosition : function(){
			// If at the end, hide the next link
			(prettyPhoto.setPosition == prettyPhoto.setCount) ? $('div.pictureHolder a.next').hide() : $('div.pictureHolder a.next').show();
			
			// If at the beginning, hide the previous link
			(prettyPhoto.setPosition == 1) ? $('div.pictureHolder a.previous').hide() : $('div.pictureHolder a.previous').show();
			
			// Change the current picture text
			$('div.pictureHolder span.currentText span').text(prettyPhoto.setPosition);
			
			if($(prettyPhoto.imagesArray[prettyPhoto.arrayPosition]).attr('title')){
				$('div.pictureHolder .description').text($(prettyPhoto.imagesArray[prettyPhoto.arrayPosition]).attr('title'));
			}else{
				$('div.pictureHolder .description').text('');
			}
		},
		centerPicture : function(){
			var offset = $('div.pictureHolder').offset();

			$('div.pictureHolder').css({
				'top': offset.top + prettyPhoto.getScroll() - $('div.pictureHolder').height()/2,
				'left': offset.left - $('div.pictureHolder').width()/2
			});
		},
		preload : function(){
			// Set the new image
			imgPreloader = new Image();

			$('div.pictureHolder .content').css('overflow','hidden');
			$('div.pictureHolder #fullResImage').attr('src',$(prettyPhoto.imagesArray[prettyPhoto.arrayPosition]).attr('href'));

			imgPreloader.onload = function(){
				// Need that small delay for the anim to be nice
				setTimeout('prettyPhoto.showimage(imgPreloader.width,imgPreloader.height)',500);
			};
			
			imgPreloader.src = $(prettyPhoto.imagesArray[prettyPhoto.arrayPosition]).attr('href');
		},
		showimage : function(width,height){
			// Hide the next/previous links if on first or last images.
			prettyPhoto.checkPosition();
			
			$('div.pictureHolder .details').width(width); /* To have the correct height */
			$('div.pictureHolder .details p.description').width(width - parseFloat($('div.pictureHolder a.close').css('width'))); /* So it doesn't overlap the button */
			
			// Get the container size, to resize the holder to the right dimensions
			containerHeight = height + parseFloat($('div.pictureHolder .details').height()) + parseFloat($('div.pictureHolder .top').height()) + parseFloat($('div.pictureHolder .bottom').height());
			contentHeight = height + parseFloat($('div.pictureHolder .details').height()) + parseFloat($('div.pictureHolder .details').css('margin-top')) + parseFloat($('div.pictureHolder .details').css('margin-bottom'));
			containerWidth = width + parseFloat($('div.pictureHolder .content').css("padding-left")) + parseFloat($('div.pictureHolder .content').css("padding-right")) + prettyPhoto.options['padding'];
			
			$('div.pictureHolder .content').animate({'height':contentHeight},prettyPhoto.options['animationSpeed']);

			// Resize the holder
			$('div.pictureHolder').animate({
				'top': prettyPhoto.getScroll() + (($(window).height()/2) - (containerHeight/2)),
				'left': (($(window).width()/2) - (containerWidth/2)),
				'width':containerWidth,
				'height':containerHeight
			},prettyPhoto.options['animationSpeed'],function(){
				// Show the nav elements
				prettyPhoto.shownav();

				$('#fullResImage').show();

				// Fade the new image
				$('div.pictureHolder #fullResImage').fadeTo(prettyPhoto.options['animationSpeed'],1,function(){
					$('div.pictureHolder .hoverContainer').height(height);
				});
			});	
		},
		shownav : function(){
			if(prettyPhoto.isSet) $('div.pictureHolder .hoverContainer').fadeIn();
			$('div.pictureHolder .details').fadeIn();
			$('.loaderIcon').hide();
		},
		buildOverlay : function(){
			
			// Build the background overlay div
			backgroundDiv = "<div class='prettyPhotoOverlay'></div>";
 			$('body').append(backgroundDiv);
			$('div.prettyPhotoOverlay').css('height',$(document).height());
			$('.prettyPhotoOverlay').bind('click',function(){
				prettyPhoto.close();
			});
			
			// Basic HTML for the picture holder
			pictureHolder = '<div class="pictureHolder"><div class="top"><div class="left"></div><div class="middle"></div><div class="right"></div></div><div class="content"><div class="loaderIcon"></div><div class="hoverContainer"><a class="next" href="#">next</a><a class="previous" href="#">previous</a></div><img id="fullResImage" src="" style="display:none;" /><div class="details clearfix"><a class="close" href="#">Close</a><p class="description"></p><p class="currentTextHolder"><span class="currentText"><span>0</span>/<span class="total">0</span></span></p></div></div><div class="bottom"><div class="left"></div><div class="middle"></div><div class="right"></div></div></div>';
			$('body').append(pictureHolder);

			$('.pictureHolder').css({'opacity': 0});
			$('a.close').bind('click',function(){ prettyPhoto.close(); return false; });
			
			$('.pictureHolder .previous').bind('click',function(){
				prettyPhoto.previous();
				return false;
			});
			
			$('.pictureHolder .next').bind('click',function(){
				prettyPhoto.next();
				return false;
			});
			
			// If it's not a set, hide the links
			if(!prettyPhoto.isSet) {
				$('.hoverContainer').hide();
				$('.currentTextHolder').hide();
			};

			// Then fade it in
			$('div.prettyPhotoOverlay').css('opacity',0);
			// $('div.prettyPhotoOverlay').hide();
			$('div.prettyPhotoOverlay').fadeTo(prettyPhoto.options['animationSpeed'],0.35, function(){
				$('div.pictureHolder').fadeTo(prettyPhoto.options['animationSpeed'],1,function(){
					// To fix an IE bug
					$('div.pictureHolder').attr('style','left:'+$('div.pictureHolder').css('left')+';top:'+$('div.pictureHolder').css('top')+';');
				});
			});
		},
		getScroll : function(){
			scrollTop = window.pageYOffset || document.documentElement.scrollTop || 0;
			return scrollTop;
		},
		close : function(){
			$('div.pictureHolder').fadeTo(prettyPhoto.options['animationSpeed'],0, function(){
				$('div.prettyPhotoOverlay').fadeTo(prettyPhoto.options['animationSpeed'],0, function(){
					$('div.prettyPhotoOverlay').remove();
					$('div.pictureHolder').remove();
				});
			});
		}
	}