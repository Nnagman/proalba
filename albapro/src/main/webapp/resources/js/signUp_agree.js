//이용약관 동의
 var doc = document;
 var agree_form = doc.getElementById('agree_form');
 var inputs = agree_form.getElementsByTagName('INPUT');
 var agree_form_data = {
   "c1": false,
   "c2": false,
   "c3": false
 };
 var c1 = doc.getElementById('c1');
 var c2 = doc.getElementById('c2');
 var c3 = doc.getElementById('c3');
 function checkboxListener() {
   agree_form_data[this.name] = this.checked;
   if(this.checked) {
     // submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분.
     this.parentNode.style.color = "#000";
   }
 }
   c1.onclick = c2.onclick = c3.onclick = checkboxListener;
   var all = doc.getElementById('all');
   all.onclick = function() {
     if (this.checked) {
       setCheckbox(agree_form_data, true);
     } else {
       setCheckbox(agree_form_data, false);
     }
   };
   function setCheckbox(obj, state) {
     for (var x in obj) {
       obj[x] = state;
       for(var i = 0; i < inputs.length; i++) {
         if(inputs[i].type == "checkbox") {
           inputs[i].checked = state;
         }
       }
     }
   }
