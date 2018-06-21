<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/19
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/notecss.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/notejs.js"></script>
    <link href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/message.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/user/ke/js/message.js"></script>
</head>
<body style="margin-top: 0px;padding-top: 0px;">
<form action="${pageContext.request.contextPath}/recomment/selectRecommentById.action?reobjectid=${sessionScope.uid}&reobjectType=${sessionScope.userType}&restate=0" name="mainForm" method="post">
<input type="hidden" id="curPage" name="curPage" value="1"/>
</form>
<table class="pinghuifu" style="margin-top: 0px;padding-top: 5px;">
    <c:forEach items="${pageInfo.list}" var="recomment">
        <c:if test="${!(recomment.reusername eq sessionScope.user.uname)}">
        <tr id="tr_${recomment.recommentid}" >
            <td width="100">
            </td>
            <td >
                <h5>${recomment.reusername}@ 你</h5>
                <div class="phPar">
                ${recomment.recontent}
                    <p><fmt:formatDate value="${recomment.recomtime}" pattern="yyyy-MM-dd hh:mm:ss"/><span style="margin-left: 70%"> <a href="${pageContext.request.contextPath}/comment/selectCommentById.action?commentid=${recomment.commentid}&recommentid=${recomment.recommentid}">[查看详情]</a>
                        <span class="re-show">[回复]</span>
                        <span class="re-hide">[收起回复]</span>
                    </span> </p>
                </div><!--phPar/-->
                <div class="reply">
                    <form action="#" method="get">
                        <input type="hidden" id="reobjectname_${recomment.recommentid}"+ value="${recomment.reusername}"/>
                        <input type="hidden" id="reobjectid_${recomment.recommentid}" value="${recomment.reuserid}"/>
                        <input type="hidden" id="reobjecttype_${recomment.recommentid}" value="${recomment.reusertype}"/>
                        <input type="hidden" id="commentid_${recomment.recommentid}" value="${recomment.commentid}"/>
                        <textarea type="text" placeholder="Your Comments..." id="recontent_${recomment.recommentid}"></textarea>
                        <div class="re-tijiao">
                            <input type="button" onclick="addrecomment(${recomment.recommentid})" value="提交回复" />
                        </div>
                    </form>
                </div><!--reply/-->
            </td>
        </tr>
        </c:if>
    </c:forEach>
</table>
<ul class="pagination pagination-lg" style="margin-left: 350px;">
    <li><a href="javascript:getPage(${pageInfo.firstPage})"  >首页</a></li>
    <li><a href="javascript:getPage(${pageInfo.prePage})" >上一页</a></li>
    <li><span><b>${pageInfo.pageNum}</b>/<b>${pageInfo.pages}</b></span></li>
    <c:if test="${!pageInfo.isLastPage}"><li><a href="javascript:getPage(${pageInfo.nextPage})"  >下一页</a></li></c:if>
    <li> <a href="javascript:getPage(${pageInfo.lastPage})" target="mainFrame">末页</a></li>

</ul>

<script>
    function  getPage(curPage) {

        //将我们这个隐藏域的值变成curPage
        $("#curPage").val(curPage);
        //触发表单提交事件
        $("#mainForm").submit();

    }
    function addrecomment(recommentid) {
         if(confirm("确认回复么？")){
             var recontent=$("#recontent_"+recommentid);
             var reobjectname=$("#reobjectname_"+recommentid);
             var reobjectid=$("#reobjectid_"+recommentid);
             var reobjecttype=$("#reobjecttype_"+recommentid);
             var commentid=$("#commentid_"+recommentid);
            $.ajax({
                type:"post",
                data:"commentid="+commentid.val()+"&recontent="+recontent.val()
                +"&reobjectname="+reobjectname.val()+"&reobjectid="+reobjectid.val()
                +"&reobjecttype="+reobjecttype.val(),
                url:"${pageContext.request.contextPath}/recomment/addrecomment.action",
                success:function (data) {
                        recontent.val("");
                      $.message("回复成功");
                    $("#tr_"+recommentid).remove();
                    $.ajax({
                        type:"post",
                        data:"recommentid="+recommentid,
                        url:"${pageContext.request.contextPath}/recomment/changestate.action"
                    });
                }
            });
        }

    }
</script>
</body>
</html>
