/**
 * 
 */
function alert(data){
	layer.alert(data, {skin: 'layui-layer-molv',closeBtn: 1,title:'提示'});
}

function confirm(data,bt1,bt2,f1,f2){
	layer.confirm(data, {btn:[bt1,bt2],title:'提示',skin:'layui-layer-molv'},f1,f2);
}

function alert(data,f){
	layer.alert(data, {skin: 'layui-layer-molv',closeBtn: 1,title:'提示'},f);
}
