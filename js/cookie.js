// JavaScript Document
var today = new Date();
  var expiry = new Date(today.getTime() + 30 * 24 * 3600 * 1000); // plus 30 days

  function setCookie(name, value)
  {
    document.cookie=name + "=" + escape(value) + "; path=/; expires=" + expiry.toGMTString();
  }

function storeValues(form)  
  {
    setCookie("field1", form.field1.value);
    setCookie("field2", form.field2.value);
    setCookie("field3", form.field3.value);
    setCookie("field4", form.field4.value);
    return true;
  }
  
   if(field1 = getCookie("field1")) document.myForm.field1.value = field1;
  if(field2 = getCookie("field2")) document.myForm.field2.value = field2;
  if(field3 = getCookie("field3")) document.myForm.field3.value = field3;
  if(field4 = getCookie("field4")) document.myForm.field4.value = field4;
  
  var expired = new Date(today.getTime() - 24 * 3600 * 1000); // less 24 hours

  function deleteCookie(name)
  {
    document.cookie=name + "=null; path=/; expires=" + expired.toGMTString();
  }

function clearCookies()
  {
    deleteCookie("field1");
    deleteCookie("field2");
    deleteCookie("field3"); 
    deleteCookie("field4");
    alert('Your cookies have been deleted!');
  }