/*=======Ver: 6.4.60116========*/
/*DHTMLMenu, (c) 2005, SourceTec Software Co.,LTD  -  www.sothink.com*/
function strSc(p){stcSc(p,0);stcIt(p.sc[0],0);stcIt(p.sc[1],0);p._sc.style.overflow="visible";p._sc.style.width="";p._sc.style.height="";return 1;}
function stsSc(p){	if(!(p.typ&2)) return 1;if(!p._mw){p._mw=p._layer.offsetWidth;p._mh=p._layer.offsetHeight;p._lw=1;p._lh=1;}strSc(p);var wh=stgPwh(p);	if(wh[2]){p._sc.style.overflow="hidden";p._sc.style.width=wh[0]+"px";p._sc.style.height=wh[1]+"px";p._sc.scrollTop=0;p._sc.scrollLeft=0;stcSc(p,1);}return 1;}
function stcSc(p,f){if(!(p.typ&2)) return;if(f){p.sc[0]._layer.parentNode.style.display="";p.sc[1]._layer.parentNode.style.display="";}else{p.sc[0]._layer.parentNode.style.display="none";p.sc[1]._layer.parentNode.style.display="none";}}
function stgPwh(p){var v=p.typ&1;var sw=[p.sc[0].imgW+2*p.sc[0].imgB+2*p.sc[0].bdW,p.sc[1].imgW+2*p.sc[1].imgB+2*p.sc[1].bdW],sh=[p.sc[0].imgH+2*p.sc[0].imgB+2*p.sc[0].bdW,p.sc[1].imgH+2*p.sc[1].imgB+2*p.sc[1].bdW];var win=window,m=st_ms[p.mid];if(p.frm)win=stgtfrm(m);var w=stgcw(win),h=stgch(win),l=stgcl(win),t=stgct(win),rc=p.frm&&p.parI&&!p.parI.pid?stgPxy(p,1).concat([p._rc[2],p._rc[3]]):stgPxy(p).concat([p._rc[2],p._rc[3]]);var xd=p.dir&3,yd=(p.dir&12)/4;var dh=p.decH[0]+p.decH[2]+2*(p.decB[0]+p.decB[2]+p.bdW+p.stre),dw=p.decW[1]+p.decW[3]+2*(p.decB[1]+p.decB[3]+p.bdW+p.stre);if(p.scD){if(v&&rc[3]>p.scD)return [rc[2]-dw,Math.max(p._lh,p.scD-sh[0]-sh[1]-dh),1];else if(!v&&rc[2]>p.scD)return [Math.max(p._lw,p.scD-sw[0]-sw[1]-dw),rc[3]-dh,1];else return [rc[2]-dw,rc[3]-dh,0];}	if(!xd&&(yd==1||yd==2)){if(v&&rc[3]>h)return [rc[2]-dw,Math.max(p._lh,h-sh[0]-sh[1]-dh),1];else if(!v&&rc[0]<l) return [Math.max(p._lw,rc[2]-l+rc[0]-sw[0]-sw[1]-dw),rc[3]-dh,1];}else if((xd==1||xd==2)&&!yd){if(v&&rc[1]<t)return [rc[2]-dw,Math.max(p._lh,rc[3]+rc[1]-t-sh[0]-sh[1]-dh),1];else if(!v&&rc[2]>w)return [Math.max(p._lw,w-sw[0]-sw[1]-dw),rc[3]-dh,1];}else if((xd==1||xd==2)&&yd==3){if(v&&rc[3]>h-rc[1]+t)return [rc[2]-dw,Math.max(p._lh,h-rc[1]+t-sh[0]-sh[1]-dh),1];else if(!v&&rc[2]>w)return [Math.max(p._lw,w-sw[0]-sw[1]-dw),rc[3]-dh,1];}else if(xd==3&&(yd==1||yd==2)){if(v&&rc[3]>h)return [rc[2]-dw,Math.max(p._lh,h-sh[0]-sh[1]-dh),1];else if(!v&&rc[2]>w-rc[0]+l)return [Math.max(p._lw,w-rc[0]+l-sw[0]-sw[1]-dw),rc[3]-dh,1];}else {if(v&&rc[3]>h)return [rc[2]-dw,Math.max(p._lh,h-sh[0]-sh[1]-dh),1];else if(!v&&rc[2]>w)return [Math.max(p._lw,w-sw[0]-sw[1]-dw),rc[3]-dh,1];}return [rc[2]-dw,rc[3]-dh,0];}
function stsov(s){var p=s.parP;stcIt(s,s.stat&1|01111111110);if(p.scid) clearTimeout(p.scid);stscr(s.sid,p)}
function stsou(s){var p=s.parP;stcIt(s,s.stat&1|0);p.scsp=100;if(p.scid) clearTimeout(p.scid)}
function stsdn(s){var p=s.parP;p.scsp=10;}
function stsdu(s){var p=s.parP;p.scsp=100;}
function stscr(n,p){var d=0;if(p.typ&1){if(n){d=p._sc.scrollTop+4;if(d+p._sc.offsetHeight>=p._mh){p._sc.scrollTop=p._mh-p._sc.offsetHeight;stcIt(p.sc[1],01111111111);}else{p._sc.scrollTop=d;stcIt(p.sc[0],1);p.scid=setTimeout("stscr("+n+",st_ms["+p.mid+"].ps["+p.id+"])",p.scsp);}}else{d=p._sc.scrollTop-4;if(d<=0){p._sc.scrollTop=0;stcIt(p.sc[0],01111111110);}else{p._sc.scrollTop=d;stcIt(p.sc[1],0);p.scid=setTimeout("stscr("+n+",st_ms["+p.mid+"].ps["+p.id+"])",p.scsp);}}}else{if(n){d=p._sc.scrollLeft+4;if(d+p._sc.offsetWidth>=p._mw){p._sc.scrollLeft=p._mw-p._sc.offsetWidth;stcIt(p.sc[1],01111111111);}else{p._sc.scrollLeft=d;stcIt(p.sc[0],1);p.scid=setTimeout("stscr("+n+",st_ms["+p.mid+"].ps["+p.id+"])",p.scsp);}}else{d=p._sc.scrollLeft-4;if(d<=0){p._sc.scrollLeft=0;stcIt(p.sc[0],01111111110);}else{p._sc.scrollLeft=d;stcIt(p.sc[1],0);p.scid=setTimeout("stscr("+n+",st_ms["+p.mid+"].ps["+p.id+"])",p.scsp);}}}}
