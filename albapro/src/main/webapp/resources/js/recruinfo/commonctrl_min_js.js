var CommonCtrl=function(a){this.strVersion="undefined"!=typeof a.version?a.version:"";this.strRegTel=/^\d{2,4}-\d{3,4}-\d{4}$/;this.strRegExistTel=/[\d|\uc77c|\uc774|\uc0bc|\uc0ac|\uc624|\uc721|\uce60|\ud314|\uad6c|\uacf5]{2,4}[-|.|_|/|\s]{0,3}[\d|\uc77c|\uc774|\uc0bc|\uc0ac|\uc624|\uc721|\uce60|\ud314|\uad6c|\uacf5]{3,4}[-|.|_|/|\s]{0,3}[\d|\uc77c|\uc774|\uc0bc|\uc0ac|\uc624|\uc721|\uce60|\ud314|\uad6c|\uacf5]{4}/;this.strRegKeyTel=/^\d{4}-\d{4}$/;this.strRegComReg=/^\d{3}-\d{2}-\d{5}$/;this.strRegJumin=
/^\d{7}-\d{8}$/;this.strRegEmail=/([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)\.([0-9a-zA-Z_-]+)/;this.strRegNumeric=/[^0-9]/;this.strRegAlpha=/[^a-z]/i;this.strRegAlphaNumeric=/[^a-z0-9]/i;this.strRegHangulAlphaNumeric=/[^\uac00-\ud7a3a-z0-9]/i;this.strRegSpecial=/[!@\\#$^*"<>=\u2605\u2663\u25a0\u260e\u2665\u25b6\u25c0\u25c6\u203b\u2606\u25cb\u25cf\u25ce\u25c7\u25a1\u25b3\u25b2\u25bd\u25bc\u2192\u2190\u2191\u2193\u2194\u3013\u25c1\u25b7\u2664\u2660\u2661\u2667\u2299\u25c8\u25a3\u25d0\u25d1\u2592\u25a4\u25a5\u25a8\u25a7\u25a6\u25a9\u2668\u260f\u261c\u261e\u00b6\u2021\u2195\u2197\u2199\u2196\u2198\u266d\u2669\u266a\u266c\u3266\u3001\u3002\u00bf\u00a4\u3003\u2260\u00b1\u226a\u226b\u00d7\u00f7\u220f\u2211\u2227\u2228\u2229\u222a\u222b\u2252\u2261\u2264\u2265\u2283\u2286\u2287\u22a5\u2312\u21d2\u21d4\u00a7\u00ae\u00b0\u222c\u2640\u2642\u00bc\u00bd\u00be\u00c6\u0111\u00d0\u0126\u00ba\u00d8\u00df\u00de;\u2500\u2501\u2502\u2503\u250c\u250d\u250e\u250f\u2510\u2511\u2512\u2513\u2514\u2515\u2516\u2517\u2518\u2519\u251a\u251b\u251c\u251d\u251e\u251f\u2520\u2521\u2522\u2523\u2524\u2525\u2526\u2527\u2528\u2529\u252a\u252b\u252c\u252d\u252e\u252f\u2530\u2531\u2532\u2533\u2534\u2535\u2536\u2537\u2538\u2539\u253a\u253b\u253c\u253d\u253e\u253f\u2540\u2541\u2542\u2543\u2544\u2545\u2546\u2547\u2548\u2549\u254a\u254b]/gi;
this.strRegSpecialDouble="-+()[]%&,.\u321c\u3214'/";this.strRegNumberComma=/(^[+-]?\d+)(\d{3})/;this.strRegHomepage=/^((([a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3}))|(([0-9]{1,3}\.){3}([0-9]{1,3})))((\/|\\?)[a-z0-9~#%&'_\+=:\?\.-]*)*)$/};
CommonCtrl.prototype={isUndefined:function(a){return"undefined"!=typeof a?!0:!1},isRegulation:function(a){var b=this.isUndefined(a.type)?a.type.toUpperCase():"";a=this.isUndefined(a.txt)?a.txt:"";var c="",d=this.strRegTel,e=this.strRegExistTel,f=this.strRegKeyTel,g=this.strRegComReg,k=this.strRegJumin,h=this.strRegEmail,n=this.strRegNumeric,m=this.strRegAlpha,l=this.strRegAlphaNumeric,p=this.strRegHangulAlphaNumeric,q=this.strRegSpecial,r=this.strRegSpecialDouble,u=this.strRegHomepage;try{return c=
{TEL:function(a){return d.test(a)?!0:f.test(a)?!0:!1},EXISTTEL:function(a){return e.test(a)?!0:!1},COMREG:function(a){return g.test(a)?!0:!1},JUMIN:function(a){return k.test(a)?!0:!1},EMAIL:function(a){return h.test(a)?!0:!1},NUMERIC:function(a){return n.test(a)?!1:!0},ALPHA:function(a){return m.test(a)?!1:!0},ALPHANUMERIC:function(a){return l.test(a)?!1:!0},HANGULALPHANUMERIC:function(a){return p.test(a)?!1:!0},SPECIAL:function(a){return q.test(a)?!1:!0},SPECIALDOUBLE:function(a){for(var b=0,d=r.length;b<
d;b++)if(a=r.substr(b,1),-1<strVal.indexOf(a+a))return!1;return!0},HOMEPAGE:function(a){return u.test(a)?!0:!1}}[b],c(a)}catch(t){this._setException(t.name+":"+t.message)}},drawOption:function(a){var b=this.isUndefined(a.id)?a.id:"",c=this.isUndefined(a.empty)?a.empty:"N",d=this.isUndefined(a.group)?a.group:"",e=this.isUndefined(a.name)?a.name:"",f=this.isUndefined(a.key)?a.key:"NM",g=this.isUndefined(a.val)?a.val:"CD",k=this.isUndefined(a.selected)?a.selected:"";a=eval(d+"."+e);var h="";try{$.each(a,
function(a,b){h=k==b[g]?h+("<option value='"+b[g]+"' selected>"+b[f]+"</option>"):h+("<option value='"+b[g]+"'>"+b[f]+"</option>")}),"Y"==c?($("#"+b).empty(),$("#"+b).html(h)):$("#"+b).append(h)}catch(n){this._setException(n.name+":"+n.message)}},drawOptionMid:function(a){var b=this.isUndefined(a.id)?a.id:"",c=this.isUndefined(a.empty)?a.empty:"N",d=this.isUndefined(a.group)?a.group:"",e=this.isUndefined(a.name)?a.name:"",f=this.isUndefined(a.mkey)?a.mkey:"MCD",g=this.isUndefined(a.mval)?a.mval:"",
k=this.isUndefined(a.key)?a.key:"NM",h=this.isUndefined(a.val)?a.val:"CD",n=this.isUndefined(a.selected)?a.selected:"";a=eval(d+"."+e);var m="<option value=''>\uc9c1\uc885\ud558\uc704</option>";try{$.each(a,function(a,b){g==b[f]&&b[f]!=b[h]&&(m=n==b[h]?m+("<option value='"+b[h]+"' selected>"+b[k]+"</option>"):m+("<option value='"+b[h]+"'>"+b[k]+"</option>"))}),"Y"==c?($("#"+b).empty(),$("#"+b).html(m)):$("#"+b).append(m)}catch(l){this._setException(l.name+":"+l.message)}},setStartPage:function(a){a=
this.isUndefined(a.link)?a.link:"";startpage.style.behavior="url(#default#homepage)";startpage.setHomePage(a)},setBookMark:function(a){var b=this.isUndefined(a.title)?a.title:"",c=this.isUndefined(a.link)?a.link:"";a=this.isUndefined(a.msg)?a.msg:"\ud655\uc778\uc744 \ud074\ub9ad\ud558\uc2e0 \ud6c4 Ctrl + D\ub97c \ub20c\ub7ec\uc8fc\uc138\uc694.";try{if(document.all)window.external.AddFavorite(c,b);else if(window.sidebar&&window.sidebar.addPanel)window.sidebar.addPanel(b,c,"");else if(window.opera&&
window.print){var d=document.createElement("a");d.setAttribute("href",c);d.setAttribute("title",b);d.setAttribute("rel","sidebar");d.click()}else alert(a)}catch(e){this._setException(e.name+":"+e.message)}},setCreateScript:function(a){a=this.isUndefined(a.link)?a.link:"";try{var b=document.createElement("script");b.type="text/javascript";b.charset="euc-kr";b.src=a;document.getElementsByTagName("head")[0].appendChild(b)}catch(c){this._setException(c.name+":"+c.message)}},_setException:function(a){},
getCheckBoxToggle:function(a){var b=this.isUndefined(a.id)?a.id:"";a=this.isUndefined(a.target)?a.target:"";b=$("input:checkbox[id="+b+"]").is(":checked");$("input:checkbox[name="+a+"]").attr("checked",b)},getCheckboxValid:function(a){a=this.isUndefined(a.id)?a.id:"";var b=[],c="";try{return $("input:checkbox[name="+a+"]:checked").each(function(){b.push(this.value)}),$.each(b,function(a,b){c+=""==c?b:","+b}),c}catch(d){this._setException(d.name+":"+d.message)}},getCheckboxCnt:function(a){var b=this.isUndefined(a.name)?
a.name:"",c=this.isUndefined(a.cnt)?a.cnt:0,d=this.isUndefined(a.msg)?a.msg:"\ucd5c\ub300 "+c+"\uae4c\uc9c0 \uc120\ud0dd\uac00\ub2a5\ud569\ub2c8\ub2e4";a=this.isUndefined(a.event)?a.event:"";try{$("input:checkbox[name="+b+"]:checked").length>c&&(alert(d),""!=a?a.preventDefault?a.preventDefault():event.returnValue=!1:event.returnValue=!1)}catch(e){this._setException(e.name+":"+e.message)}},getLeftPixel:function(a){var b=this.isUndefined(a.pixel)?a.pixel:0;a=this.isUndefined(a.event)?a.event:"";var c;
try{return c=document.all?document.documentElement.scrollLeft+event.clientX+b:0<navigator.userAgent.indexOf("Chrome")?document.body.scrollLeft+a.clientX+b+"px":document.documentElement.scrollLeft+a.clientX+b+"px"}catch(d){this._setException(d.name+":"+d.message)}},getTopPixel:function(a){var b=this.isUndefined(a.pixel)?a.pixel:0;a=this.isUndefined(a.event)?a.event:"";var c;try{return c=document.all?document.documentElement.scrollTop+event.clientY+b:0<navigator.userAgent.indexOf("Chrome")?document.body.scrollTop+
a.clientY+b+"px":document.documentElement.scrollTop+a.clientY+b+"px"}catch(d){this._setException(d.name+":"+d.message)}},formatNumber:function(a){a=this.isUndefined(a.num)?a.num:0;a=Number(a);for(a=String(a);this.strRegNumberComma.test(a);)a=a.replace(this.strRegNumberComma,"$1,$2");return a},openPopup:function(a){var b=this.isUndefined(a.position)?a.position:"LT",c=this.isUndefined(a.name)?a.name:"",d=this.isUndefined(a.link)?a.link:"",e=this.isUndefined(a.width)?a.width:0,f=this.isUndefined(a.height)?
a.height:0,g=this.isUndefined(a.toolbar)?a.toolbar:"no",k=this.isUndefined(a.menubar)?a.menubar:"no",h=this.isUndefined(a.statusbar)?a.statusbar:"no",n=this.isUndefined(a.scrollbar)?a.scrollbar:"no",m=this.isUndefined(a.locationBar)?a.locationBar:"no";a=this.isUndefined(a.resizable)?a.resizable:"no";var l=0,p=0;try{switch(b){case "LT":p=l=0;break;case "RT":l=0;p=screen.availWidth-e;break;case "RB":l=screen.availHeight-f;p=screen.availWidth-e;break;case "LB":l=screen.availHeight-f;p=0;break;case "CE":l=
(screen.availHeight-f)/2,p=(screen.availWidth-e)/2}window.open(d,c,"top="+l+",left="+p+",width="+e+",height="+f+",toolbar="+g+",menubar="+k+",location="+m+",status="+h+",scrollbars="+n+",resizable="+a)}catch(q){this._setException(q.name+":"+q.message)}},openModeless:function(a){var b=this.isUndefined(a.link)?a.link:"",c=this.isUndefined(a.width)?a.width:0,d=this.isUndefined(a.height)?a.height:0,e=this.isUndefined(a.center)?a.center:"yes",f=this.isUndefined(a.help)?a.help:"no",g=this.isUndefined(a.resizable)?
a.resizable:"no",k=this.isUndefined(a.status)?a.status:"no";a=this.isUndefined(a.scroll)?a.scroll:0;try{window.showModalDialog(b,window,"dialogWidth:"+c+"px; dialogHeight:"+d+"px;center:"+e+";help:"+f+";resizable:"+g+";status:"+k+";scroll:"+a+";")}catch(h){this._setException(h.name+":"+h.message)}},chkValidator:function(a){var b=this.isUndefined(a.type)?a.type.toUpperCase():"";a=this.isUndefined(a.id)?a.id:"";var c="";try{return c={TEXT:function(a){return""==$.trim($("#"+a).val())?!1:!0},RADIO:function(a){return 0==
$("input:radio[name="+a+"]:checked").length?!1:!0},CHECKBOX:function(a){return 0==$("input:checkbox[name="+a+"]:checked").length?!1:!0},SELECTBOX:function(a){return""==$("#"+a+" option:selected").val()?!1:!0}}[b],c(a)}catch(d){this._setException(d.name+":"+d.message)}},chkNumeric:function(a){try{var b=this.isUndefined(a)&&this.isUndefined(a.event)?a.event:event,c=b.keyCode?b.keyCode:b.which;return(48>c||57<c)&&0!=c&&8!=c&&37!=c&&39!=c&&46!=c?(b.preventDefault?b.preventDefault():b.returnValue=!1,!1):
!0}catch(d){this._setException(d.name+":"+d.message)}},isNumber:function(a){return/[^0-9]/.test(a)?!1:!0},moEvent:function(a){var b=this.isUndefined(a.id)?a.id:"";a=this.isUndefined(a.layer)?a.layer:"";var c=eval("window."+b),d=-1<navigator.appVersion.indexOf("MSIE 8")?document.body:document.documentElement;"Y"==a?"hidden"==$("#"+b).css("visibility")?$("#"+b).css("visibility","visible"):$("#"+b).css("visibility","hidden"):"hidden"==$("#"+b).css("visibility")?(c.style.pixelLeft=d.scrollLeft+event.x-
1,c.style.pixelTop=d.scrollTop+event.y-1,$("#"+b).css("visibility","visible")):$("#"+b).css("visibility","hidden")},goUrl:function(a){var b=this.isUndefined(a.confirm)?a.confirm:"N",c=this.isUndefined(a.ment)?a.ment:"",d=this.isUndefined(a.link)?a.link:"",e=this.isUndefined(a.submit)?a.submit:"N",f=this.isUndefined(a.id)?a.id:"",g=this.isUndefined(a.method)?a.method:"get",k=this.isUndefined(a.iframe)?a.iframe:"N";a=this.isUndefined(a.target)?a.target:"_self";try{if("Y"==b)if(confirm(c))this._goSubmitOrHref(k,
d,e,f,g,a);else return!1;else this._goSubmitOrHref(k,d,e,f,g,a)}catch(h){this._setException(h.name+":"+h.message)}},_goSubmitOrHref:function(a,b,c,d,e,f){try{"Y"==a?"Y"==c?($("#"+d).attr("target","ifrm"),$("#"+d).attr("method",e),$("#"+d).attr("action",b),$("#"+d).submit()):ifrm.location.href=b:"Y"==c?($("#"+d).attr("target",f),$("#"+d).attr("method",e),$("#"+d).attr("action",b),$("#"+d).submit()):document.location.href=b}catch(g){this._setException(g.name+":"+g.message)}},chkTextNum:function(a){var b=
this.isUndefined(a.id)?a.id:"",c=this.isUndefined(a.size)?a.size:0,d=this.isUndefined(a.target)?a.target:"";a=this.isUndefined(a.msg)?a.msg:c+"\ubb38\uc790\uae4c\uc9c0\ub9cc \uc785\ub825\uac00\ub2a5 \ud569\ub2c8\ub2e4";var e=$("#"+b).val(),f=e.length;try{if(f>c)return alert(a),$("#"+b).val(e.substring(0,c)),!1;$("#"+d).html(f)}catch(g){this._setException(g.name+":"+g.message)}},chkTextByte:function(a){var b=this.isUndefined(a.id)?a.id:"",c=this.isUndefined(a.size)?a.size:0,d=this.isUndefined(a.target)?
a.target:"";a=this.isUndefined(a.msg)?a.msg:c+"Byte\uae4c\uc9c0\ub9cc \uc785\ub825\uac00\ub2a5 \ud569\ub2c8\ub2e4";var e=$("#"+b).val(),f=e.length,g=0;try{for(var k=0;k<f;k++)if(g+=128<e.charCodeAt(k)?2:1,g>c)return alert(a),$("#"+b).val(e.substring(0,k)),!1;$("#"+d).html(g)}catch(h){this._setException(h.name+":"+h.message)}},chgEmail:function(a){var b=this.isUndefined(a.id)?a.id:"";a=this.isUndefined(a.target)?a.target:"";try{""!=$("#"+b).val()?($("#"+a).attr("readonly",!0),$("#"+a).val($("#"+b).val())):
0<$("#"+b+" option").index($("#"+b+" option:selected"))&&""==$("#"+b).val()?($("#"+a).attr("readonly",!1),$("#"+a).val(""),$("#"+a).focus()):($("#"+a).val(""),$("#"+a).attr("readonly",!0))}catch(c){this._setException(c.name+":"+c.message)}},chkSpecial:function(a){var b=this.isUndefined(a.id)?a.id:"",c=$("#"+b).val(),d=this.isUndefined(a.msg1)?a.msg1:c+"\uc5d0\ub294 \ud5c8\uc6a9\ub41c \ud2b9\uc218\ubb38\uc790( - + ( )[ ] % & , . \u321c \u3214 ' / )\n\n\uc678\uc5d0\ub294 \uc785\ub825 \ubd88\uac00\ud569\ub2c8\ub2e4.";
a=this.isUndefined(a.msg2)?a.msg2:"\ub3d9\uc77c\ud55c \ud2b9\uc218\ubb38\uc790\ub97c 2\ud68c \uc774\uc0c1 \uc785\ub825\uc774 \ubd88\uac00\ub2a5\ud569\ub2c8\ub2e4.\n"+c+"\uc744 \ub2e4\uc2dc \ud55c\ubc88 \ud655\uc778 \ud574 \uc8fc\uc138\uc694.";try{if(this.strRegSpecial.test(c))return alert(d),$("#"+b).val(c.replace(this.strRegSpecial,"")),!0;d=0;for(var e=this.strRegSpecialDouble.length;d<e;d++){var f=this.strRegSpecialDouble.substr(d,1);if(-1<c.indexOf(f+f))return alert(a),$("#"+b).val(c.replace(f+
f,"")),!0}return!1}catch(g){this._setException(g.name+":"+g.message)}},chkInStr:function(a){var b=this.isUndefined(a.strchar)?a.strchar:"",c=this.isUndefined(a.sch)?a.sch:"";a=this.isUndefined(a.len)?a.len:"";var d,e=b.length;for(d=0;d<e;d++)if(c==b.substring(d,d+a))return!0;return!1}};