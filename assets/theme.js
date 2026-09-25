// Light/dark toggle. The saved choice is applied early by an inline snippet in <head>.
document.querySelectorAll(".theme-toggle").forEach(function(b){
  b.addEventListener("click",function(){
    var r=document.documentElement,cur=r.dataset.theme||(matchMedia("(prefers-color-scheme:dark)").matches?"dark":"light"),next=cur==="dark"?"light":"dark";
    r.dataset.theme=next;
    try{localStorage.setItem("theme",next)}catch(e){}
  });
});
