/**
 * javascript Infinite Level Linkage Select
 * javascript 无限级联动多功能菜单
 * 
 * Version 2.1 (2013-05-12)
 * @requires jQuery v1.6.0 or newer
 *
 * Examples at: http://linkagesel.xiaozhong.biz
 * @Author waiting@xiaozhong.biz
 *
 * @copyright
 * Copyright (C) 2013 Waiting Song
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */

"use strict";var LinkageSel=function(opts){var $=jQuery;var that=this;this.bindEls=[];this.data={'0':{}};this.recycle=[],this.st={mvcQuery:false,ie6:false,url:'',ajax:'',autoBind:true,autoHide:true,hideWidth:true,autoLink:true,cache:true,defVal:[],data:null,head:'Please select..',level:20,loaderImg:'images/ui-anim_basic_16x16.gif',loader_duration:100,root:[],minWidth:120,maxWidth:300,fixWidth:0,select:[],selClass:'LinkageSel',selStyle:'',onChange:false,trigger:true,triggerValues:[],err:false,dataReader:{}};if(opts&&typeof opts==='object'){$.extend(this.st,opts)}if(!this.st.dataReader){this.st.dataReader={id:'id',name:'name',cell:'cell'}}else{(typeof this.st.dataReader.id==='undefined'||!this.st.dataReader.id)&&(this.st.dataReader.id='id');(typeof this.st.dataReader.name==='undefined'||!this.st.dataReader.name)&&(this.st.dataReader.name='name');(typeof this.st.dataReader.cell==='undefined'||!this.st.dataReader.cell)&&(this.st.dataReader.cell='cell')}this.st.selClass=$.trim(this.st.selClass);if(/msie/.test(navigator.userAgent.toLowerCase())){if($.browser&&$.browser.version&&$.browser.version=='6.0'){this.st.ie6=true}else if(!$.support.leadingWhitespace){this.st.ie6=true}}this.data[0][this.st.dataReader.name]='root';this.data[0][this.st.dataReader.val]=0;this.data[0][this.st.dataReader.cell]=this.st.data;this.innerCallback=this.st.onChange;this.st.onChange=false;var loader=$('#linkagesel_loader');if(!loader||!loader[0]){$(document.body).append('<img id="linkagesel_loader" style="display: none; position: absolute;"  src="'+encodeURI(this.st.loaderImg||'ui-anim_basic_16x16.gif')+'" />');this.loader=$('#linkagesel_loader')||null}else{this.loader=loader}if(typeof this.st.select==='string'){this.st.select=[this.st.select]}else if(!isArray(this.st.select)){this.st.select=[]}if(isNumber(this.st.defVal)){this.st.defVal=[this.st.defVal]}else if(!isArray(this.st.defVal)){this.st.defVal=[]}if(isNumber(this.st.root)||!isNaN(+this.st.root)){this.st.root=[this.st.root]}else if(!isArray(this.st.root)){this.st.root=[]}var selLen=this.st.select.length;if(selLen<1){alert('没有对象被绑定到mLinkageSel()!');return false}for(var i=0;i<selLen;i++){this.bind((this.st.select)[i])}selLen=opts=loader=null;this.clean(0);this.fill(0,this.st.defVal[0]);this.outer={changeValues:function(parm,change){that._changeValues(parm,change);return this},getSelectedValue:function(idx){return that._getSelectedValue(idx)},getSelectedArr:function(){return that._getSelectedArr()},getSelectedData:function(key,bindIdx){return that._getSelectedData(key,bindIdx)},getSelectedDataArr:function(key){return that._getSelectedDataArr(key)},onChange:function(callback){if(callback&&typeof callback==='function'){that.st.onChange=callback}return this},reset:function(){that._reset();return this},resetAll:function(){that._reset(true);return this}};return this.outer};LinkageSel.prototype.bind=function(selector){var that=this,st=this.st,bindEls=this.bindEls,bindIdx=bindEls.length||0,defValue=st.defVal&&st.defVal[bindIdx]||null,elm;if(!selector){return false}if(typeof selector==='string'){elm=jQuery(selector).eq(0)}else if(typeof selector==='object'){elm=selector.jquery?selector.eq(0):jQuery(selector).eq(0)}if(!elm[0]||!elm.is('select')){return false}st.selClass&&(!elm.hasClass(st.selClass))&&elm.addClass(st.selClass);bindEls.push({obj:elm,value:defValue,defValue:defValue});elm.data('bindIdx',bindIdx).change(that,function(e){var st=that.st,bindEls=that,bindIdx=jQuery(this).data('bindIdx'),nextEl=bindEls[bindIdx+1]&&bindEls[bindIdx+1].obj||null,selected_value=null;if(!nextEl||!nextEl.find('option').length){selected_value=st.defVal&&st.defVal[bindIdx+1]||null}that.clean(bindIdx);that.fill(bindIdx+1,selected_value)});if(elm.is(':visible')){this.setWidth(elm)}bindIdx==0&&!st.data&&elm.change();return true};LinkageSel.prototype.creatSel=function(bindIdx,callback){var st=this.st,bindEls=this.bindEls,str='';if(bindIdx<=0){return false}if(bindIdx>=st.level){this.custCallback();return false}var id='linkagesel_'+(''+Math.random()).slice(-6),str='<select id="'+id+'" style="display: none;'+st.selStyle+'" class="'+st.selClass+'" ></select>',elm=bindEls[bindIdx-1]['obj'].after(str);st.select.push(['#'+id]);this.bind('#'+id);if(typeof callback==='function'){callback(bindIdx,this)}return true};LinkageSel.prototype.fill=function(bindIdx,selValue){var bindEls=this.bindEls,st=this.st,head=st.head,data=this.getData(bindIdx),tarr=[],bindEl,elm,row,recycle=this.recycle,recycleLen=recycle.length||0;this.setLoader(false);if(bindIdx>=st.level){this.custCallback();return false}if(st.triggerValues.length){selValue=st.triggerValues[bindIdx]||null}else{selValue=typeof selValue!=='undefined'&&selValue!==''?selValue:null}if(bindIdx>0&&(bindEls[bindIdx-1].value===null||bindEls[bindIdx-1].value==='')){bindEl=bindEls[bindIdx]||{};elm=bindEl['obj'];if(elm&&elm[0]&&st.autoHide){st.hideWidth&&elm.hide()||elm.css('visibility','hidden')}st=bindEls=data=null;this.custCallback();this.resetTrigger(true);return}if(data===false){this.clean(bindIdx-1);this.custCallback();this.resetTrigger(true);return}else if(data===null){if(st.url||st.ajax){this.getRemoteData(bindIdx-1,function(idx,instance){var defValue=instance.bindEls[idx]&&instance.bindEls[idx].defValue;instance.fill(idx,defValue)})}else{this.custCallback();this.resetTrigger(true)}st=bindEls=null;return}else if(data&&typeof data==='object'){if(bindEls.length-1<bindIdx){this.creatSel(bindIdx)}bindEl=bindEls[bindIdx]||{};elm=bindEl.obj;if(!elm||!elm[0]){return}if(head||typeof head==='string'){head='<option value="">'+head+'</option>'}var tOption,index=1,selectedIdx=0,name=st.dataReader.name,id=st.dataReader.id;for(var x in data){if(!data.hasOwnProperty(x)){continue}row=data[x];typeof row[id]!=='undefined'&&row[id]&&(x=row[id]);if(recycleLen>0){tOption=recycle.pop();if(typeof tOption==='object'){tOption=jQuery(tOption).val(x).text(row[name]).prop('selected',false).get(0)}else{tOption=jQuery('<option>').val(x).text(row[name]).get(0)}recycleLen--}else{tOption=jQuery('<option>').val(x).text(row[name]).get(0)}tarr.push(tOption);if(selValue!==null&&selValue==x){selectedIdx=index}index++}row=tOption=null;if(st.autoLink&&index===2){selectedIdx--;bindEl.value=x;elm.append(tarr).show().css('visibility','');setTimeout(function(){elm.change()},0)}else{elm.append(head).append(tarr).css('visibility','').show();if(selValue&&!st.ie6){setTimeout(function(){elm.change()},0)}bindIdx&&this.custCallback()}tarr=recycle=null;if(!st.ie6){typeof elm[0].options[selectedIdx]==='object'&&(elm[0].options[selectedIdx].selected=true)}else{setTimeout(function(){typeof elm[0].options[selectedIdx]==='object'&&(elm[0].options[selectedIdx].selected=true);if(selValue){elm.change()}},0)}this.setWidth(elm)}st=bindEls=data=bindEl=null};LinkageSel.prototype.findEntry=function(data){var st=this.st,root=st.root,len=root&&root.length||0;if(data&&len){for(var i=0;i<len;i++){if(!root[i]||!data[root[i]]||!data[root[i]][st.dataReader.cell]){break}else{data=data[root[i]][st.dataReader.cell]}}}return data};LinkageSel.prototype.getData=function(bindIdx){var st=this.st,bindEls=this.bindEls,data=this.data[0][st.dataReader.cell],len=bindEls.length,pValue,key;if(typeof bindIdx==='undefined'||bindIdx>=st.level){return false}if(bindIdx==-1){return this.data}data=this.findEntry(data);for(var i=1;i<=bindIdx;i++){pValue=bindEls[i-1].value;if(pValue&&data&&data[pValue]){if(data[pValue][st.dataReader.cell]===false){data=false}else{data=data[pValue][st.dataReader.cell]||null}}else{data=false;break}}st=bindEls=null;return data};LinkageSel.prototype.getRemoteData=function(pBindIdx,callback){var $=jQuery,that=this,st=this.st,bindEls=this.bindEls,bindValue=pBindIdx>=0?bindEls[pBindIdx].value:0,data,dv,cell,cache=st.cache?true:false;if(pBindIdx>=st.level){return false}data=this.getData(pBindIdx);dv=data[bindValue];if(!dv||typeof dv!=='object'||dv[st.dataReader.cell]===false){this.setLoader(false);this.custCallback();this.resetTrigger(true);return false}var itemCount=0;for(var x in data){if(+x>0){itemCount++;break}}if(st.ajax){var settings={cache:cache,type:'GET',dataType:'json',mode:'abort',context:that,beforeSend:function(){this.setLoader(pBindIdx+1)},success:function(resp){var that=this,loader_duration=that.loader_duration+20;setTimeout(function(){that.setLoader(false)},loader_duration);if(resp&&typeof resp==='object'&&!isArray(resp)){dv[st.dataReader.cell]=resp;callback(pBindIdx+1,this)}else{if(dv[st.dataReader.cell]===null){dv[st.dataReader.cell]=false}else{dv[st.dataReader.cell]=null}that.custCallback();that.resetTrigger(true)}},complete:function(){this.setLoader(false)}};if(st.mvcQuery){settings.url=st.ajax+'/'+bindValue}else{settings.url=st.ajax;settings.data={};settings.data[st.dataReader.id]=bindValue}$.ajax(settings)}else if(st.url){$.getJSON(st.url,function(resp){that.setLoader(false);if(resp&&typeof resp==='object'&&!isArray(resp)){dv[st.dataReader.cell]=resp;st.url='';callback(pBindIdx+1,that)}else{if(dv[st.dataReader.cell]===null){dv[st.dataReader.cell]=false}else{dv[st.dataReader.cell]=null;st.url=''}that.custCallback()}})}};LinkageSel.prototype._reset=function(type){var st=this.st,bindEls=this.bindEls,bindEl=bindEls[0]||{},elm=bindEl.obj||null,defValue=bindEl.defValue;if(elm){this.clean(0);if(defValue){elm.find("option[value='"+defValue+"']").eq(0).prop('selected',true);elm.change()}else{elm.prop('selectedIndex',0).change()}if(type){this.data[0][st.dataReader.cell]=st.data;this.clean(0);this.fill(0,st.select[0][1])}}st=bindEls=bindEl=elm=null};LinkageSel.prototype.clean=function(bindIdx){var st=this.st,bindEls=this.bindEls||[],len=bindEls.length,bindEl,elm,recycle=this.recycle,topt;if(bindIdx<0){return false}if(!len||bindIdx>=st.level){this.custCallback();return false}for(var i=len-1;i>bindIdx;i--){bindEl=bindEls[i]||{};elm=bindEl.obj;if(elm[0]&&elm.length){elm.scrollTop(0);topt=elm.children();topt.remove();topt.length&&(jQuery.merge(recycle,topt.filter('option').toArray()));if(st.autoHide){st.hideWidth&&elm.hide()||elm.css('visibility','hidden')}if(st.fixWidth){elm.width(st.fixWidth)}else if(st.minWidth){elm.width(st.minWidth)}bindEl.value=''}}bindEls[bindIdx]&&bindEls[bindIdx].obj&&(bindEls[bindIdx].value=bindEls[bindIdx].obj.val());st=bindEls=bindEl=elm=topt=null;return true};LinkageSel.prototype.calcWidth=function(n){var st=this.st,fixW=+st.fixWidth,minW=+st.minWidth,maxW=+st.maxWidth;if(minW>0&&maxW>0){minW=Math.min(minW,maxW);maxW=Math.max(minW,maxW)}if(fixW>0){n=fixW}else if(minW>0&&n<minW){n=minW}else if(maxW>0&&n>maxW){n=maxW}else{n=-1}st=null;return n<0?false:n};LinkageSel.prototype.setWidth=function(elm){if(!elm||!elm[0]){return false}var w=this.calcWidth(elm.width());if(w===false){elm.width('')}else{elm.width(w)}};LinkageSel.prototype.setLoader=function(bindIdx){var loader=this.loader;if(!loader){return}if(bindIdx===false){loader.offset({top:0,left:0}).hide()}else{var bindEls=this.bindEls,elm,offset,tmp,width,loader_duration=this.loader_duration;if(!bindEls){return}for(var i=bindEls.length-1;i>=bindIdx;i--){tmp=bindEls[i]&&bindEls[i].obj;if(tmp&&tmp.is(':visible')){elm=tmp;break}}if(!elm&&bindIdx>0){elm=bindEls[bindIdx-1].obj}if(elm&&elm.is(':visible')){offset=elm.offset();width=elm.width();loader.offset({top:(parseInt(offset.top)+3),left:(parseInt(offset.left+width+5))}).show(loader_duration)}else{loader.hide(loader_duration).offset({top:0,left:0})}bindEls=elm=tmp=null}};LinkageSel.prototype.custCallback=function(){var st=this.st;if(!st.trigger){return}if(this.innerCallback&&typeof this.innerCallback==='function'){this.innerCallback(this)}if(st.onChange&&typeof st.onChange==='function'){st.onChange.apply(this.outer)}};LinkageSel.prototype._getSelectedArr=function(n){var st=this.st,bindEls=this.bindEls,len=bindEls.length,elm,value,arr=[];if(!len||n>len){return null}n=n-1;if(!n){for(var i=0;i<len;i++){elm=bindEls[i]&&bindEls[i].obj;if(elm&&elm[0]){arr.push(elm.val())}else{arr=null;st.err='_getSelectedArr: !elm';break}}}else{elm=bindEls[i]&&bindEls[i].obj;value=elm&&elm[0]&&elm.val()}st=bindEls=elm=null;return(arr&&arr.length>0)?arr:null};LinkageSel.prototype._getSelectedValue=function(idx){var arr=this._getSelectedArr(idx),len=arr.length,value=null,v;if(!arr||!len){return null}if(!idx){for(var i=0;i<len;i++){v=arr[i];if(v||v===0||v==='0'){value=v}else{break}}}else{value=arr[idx]}return value};LinkageSel.prototype._getSelectedData=function(key,bindIdx){var st=this.st,res={},bindEls=this.bindEls,data=this.data[0][st.dataReader.cell],dc,len,pos,valueArr,value;if(bindIdx&&isNaN(bindIdx)||bindIdx<0){return null}valueArr=this._getSelectedArr();data=this.findEntry(data);len=valueArr.length;pos=bindIdx==null||bindIdx===''?len:bindIdx+1;if(!len||!data||pos===null){return null}for(var i=0;i<pos;i++){value=valueArr[i];if(value!==''&&value!=null){if(data[value]){dc=data[value];data=data[value][st.dataReader.cell]}else{dc=null;break}}else if(bindIdx>=0){dc=null;break}else{break}}data=null;if(dc===null){res=null}else{for(var x in dc){if(dc.hasOwnProperty(x)&&x!==[st.dataReader.cell]){res[x]=dc[x]}}res=key?res[key]:res}dc=bindEls=valueArr=null;return res};LinkageSel.prototype._getSelectedDataArr=function(key){var bindEls=this.bindEls,len=bindEls.length,data,res=[];if(!len){return null}for(var i=0;i<len;i++){data=this._getSelectedData(key,i);if(data==null){break}res[i]=data}data=bindEls=null;return res};LinkageSel.prototype._changeValues=function(parm,trigger,obj){if(obj&&typeof obj==='object'){var that=obj}else{var that=this}var st=that.st,triggerValues=st.triggerValues,bindEls=that.bindEls,len=Math.min(bindEls.length,parm.length),v=[],elm;trigger=trigger?true:false;if(isNumber(parm)||typeof parm==='string'){parm=[parm]}else if(isArray(parm)){parm=parm}else{parm=[]}that.resetTrigger(trigger,parm);for(var i=0;i<len;i++){elm=bindEls[i]['obj'];if(elm.val()!==parm[i]){elm&&elm.find("option[value='"+parm[i]+"']").eq(0).prop('selected',true);break}}elm.change()};LinkageSel.prototype.resetTrigger=function(trigger,value){var st=this.st;trigger=trigger||typeof trigger==='undefined'?true:false;value=isArray(value)?value:(typeof value==='undefined'?[]:[value]);st.triggerValues=value;st.trigger=trigger};var isArray=function(v){return Object.prototype.toString.apply(v)==='[object Array]'};var isNumber=function(o){return typeof o==='number'&&isFinite(o)};