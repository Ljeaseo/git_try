/**
 * 
 */

$(document).ready(function(){
	$("#add").on("click",function(){
		$("input[name='pageNum']").val("1");
		$("#searchForm").submit();
	})
})