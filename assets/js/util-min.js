var framework={mktoggle:function(e,a){return'<i class="'+e+" fas fa-toggle-"+(a?"on":"off")+'"></i>'},tick:function(e){return framework.mktoggle("",e)},toggle:function(e){e.toggleClass("fa-toggle-off").toggleClass("fa-toggle-on")},dotoggle:function(e,a,t,o){if(e.preventDefault(),e.stopPropagation(),!a.hasClass("fadis"))if(a.hasClass("htick")){const e=a.next();e.val(1==e.val()?0:1),framework.toggle(a)}else{const e=a.parent().parent();$.ajax(base+"/ajax/toggle/"+t+"/"+e.data("id")+"//"+o,{method:putorpatch}).done(function(){framework.toggle(a)}).fail(function(e){bootbox.alert("<h3>Toggle failed</h3>"+e.responseText)})}},deletebean:function(e,a,t,o,n,r=""){e.preventDefault(),e.stopPropagation(),""==r&&(r="this "+t),bootbox.confirm("Are you sure you you want to delete "+r+"?",function(e){e&&$.ajax(base+"/ajax/bean/"+t+"/"+o+"/",{method:"DELETE"}).done(n).fail(function(e){bootbox.alert("<h3>Delete failed</h3>"+e.responseText)})})},editcall:function(e){const a=base+"/ajax/"+e.op+"/"+e.bean+"/"+e.pk+"/"+e.name+"/";return $.ajax(a,{method:putorpatch,data:{value:e.value}})},fadetodel:function(e){e.css("background-color","yellow").fadeOut(1500,function(){e.remove()})},dodelbean:function(e,a,t,o=""){let n=$(a).parent().parent();framework.deletebean(e,a,t,n.data("id"),function(){framework.fadetodel(n)},o)},tableClick:function(e){e.preventDefault();const a=$(e.target);e.data.clicks.forEach(function(t){let[o,n,r]=t;a.hasClass(o)&&n(e,a,e.data.bean,r)})},goedit:function(e,a,t){window.location.href=base+"/admin/edit/"+t+"/"+a.parent().parent().data("id")+"/"},goview:function(e,a,t){window.location.href=base+"/admin/view/"+t+"/"+a.parent().parent().data("id")+"/"},beanCreate:function(e,a,t,o){$.post(base+"/ajax/bean/"+e+"/",a).done(t).fail(function(a){bootbox.alert("<h3>Failed to create new "+e+"</h3>"+a.responseText)}).always(function(){$(o).attr("disabled",!1)})},addMore:function(e){e.preventDefault(),$("#mrow").before($("#example").clone()),$("input,textarea",$("#mrow").prev()).val(""),$("option",$("#mrow").prev()).prop("selected",!1)},easeInOut:function(e,a,t,o,n){return Math.ceil(e+Math.pow(1/t*o,n)*(a-e))},doBGFade:function(e,a,t,o,n,r,l){e.bgFadeInt&&window.clearInterval(e.bgFadeInt);let i=0;e.bgFadeInt=window.setInterval(function(){e.css("backgroundcolor","rgb("+framework.easeInOut(a[0],t[0],n,i,l)+","+framework.easeInOut(a[1],t[1],n,i,l)+","+framework.easeInOut(a[2],t[2],n,i,l)+")"),(i+=1)>n&&(e.css("backgroundcolor",o),window.clearInterval(e.bgFadeInt))},r)}};
//# sourceMappingURL=util-min.js.map