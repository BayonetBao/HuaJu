<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/18
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html><head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!---js--->
    <script src="${pageContext.request.contextPath}/user/bao/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/unslider.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/bootstrap.js"></script>
    <%--消息框--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/message.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/user/ke/js/message.js"></script>
    <%--css--%>
    <link href="${pageContext.request.contextPath}/user/bao/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/user/bao/css/style.css" rel='stylesheet' type='text/css' />
    <!-- FlexSlider -->
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/flexslider.css" type="text/css" media="screen" />
    <style>
        .zixunshi{
            width:110px;
            margin-left:600px;

        }
        .name{
            width:100px;
            margin-left:600px;
        }
        .success{
            color: #40ff1f;
        }
        .error{
            color: #ff0d20;
        }
    </style>
</head>
<body>
<div class="content" >
    <div class="blog-section" style="margin: 0px;padding:0px;">
            <div class="blog-grids" >
                <div class="col-md-6 blog-grid"  style="margin: 0px;padding-left: 12px;">
                    <div class="blog">
                        <p style="font-size: 24px;font-weight: 300;margin:0px;padding: 2px;"><a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${build.buildingid}" target="_blank">${build.building}</a></p>
                        <p><fmt:formatDate value="${build.starttime}" pattern="yyyy-MM-dd hh:mm:ss"/> <a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${build.buildingid}">查看更多</a> </p>
                        <a href="#"><img src="${pageContext.request.contextPath}/user/bao/images/g4.jpg" class="img-responsive" alt=""/></a>
                        <p></p>
                        <a href="#" class="button5 hvr-shutter-out-horizontal">so on</a>
                    </div>
                </div>
        </div>
    </div>
</div>
<div id="div_${comment.commentid}"
        <c:choose>
            <c:when test="${fn:contains(comment.comtype,'好评')}"> class="alert alert-success" </c:when>
            <c:when test="${fn:contains(comment.comtype,'中评')}">class="alert alert-info"</c:when>
            <c:otherwise>class="alert alert-warning"</c:otherwise>
        </c:choose>
             style="font-size:14px;width:100%;height:170px;margin-left: 10px;">
    <c:set value="${comment.userpic}" var="pic"/>
    <c:if test="${comment.userpic eq null||comment.userpic eq ''}"><c:set value="a2.jpg" var="pic"></c:set></c:if>
    <img src="${pageContext.request.contextPath}/user/ke/images/userImg/${pic}" alt="头像" class="img-circle" width="100px" height="100px"/>
    <p style="margin-top:10px;margin-left:20px;margin-bottom: 60px;"><span class="glyphicon glyphicon-user">${comment.uname}
                                            <c:choose>
                                                <c:when test="${comment.idtype eq 3}"><a href=""><img src="${pageContext.request.contextPath}/user/ke/images/zixunshi.png"
                                                                                                      style="margin-left:-93px;margin-top:-65px;width: 135px;height: 60px;" alt="咨询师" title="向他咨询"></a></c:when><c:when test="${comment.idtype eq 2}"><a href=""><img src="" alt="开发商" title="向他咨询"></a></c:when><c:otherwise><a href=""><img src="" alt="用 户" title="与他讨论"></a></c:otherwise>
                                            </c:choose>
                                        </span><p>
    <p class="" style="font-size:16px;padding-left:15%;margin-top:-180px;">${comment.comcontent}</p>
    <p
    <c:choose>
    <c:when test="${fn:contains(comment.comtype,'好评')}"> class="glyphicon glyphicon-thumbs-up"  </c:when>
    <c:when test="${fn:contains(comment.comtype,'中评')}"> class="glyphicon glyphicon-hand-right"</c:when>
                                                         <c:otherwise>class="glyphicon glyphicon-thumbs-down"</c:otherwise>
    </c:choose>

                                                         style="position: relative;top:29%;left: 17%;">
        <fmt:formatDate value="${comment.comtime}" pattern="yyyy-MM-dd hh:mm:ss"/>
        <c:choose>
        <c:when test="${sessionScope.userType eq comment.idtype && sessionScope.uid eq comment.id}">
        <a href="javascript:deleteComment(${comment.commentid})">删除</a>
        </c:when>
        <c:otherwise>&nbsp;&nbsp;</c:otherwise>
        </c:choose>
    <p
            <c:choose>
                <c:when test="${fn:contains(comment.comtype,'好评')}"> class="glyphicon glyphicon-thumbs-up"  </c:when>
                <c:when test="${fn:contains(comment.comtype,'中评')}"> class="glyphicon glyphicon-hand-right"</c:when>
                <c:otherwise>class="glyphicon glyphicon-thumbs-down"</c:otherwise>
            </c:choose>
            style="position: relative;left: 55%;top:35%;">
        <a href="javascript:void(0)"  onclick="favor(${comment.commentid})">
            <c:set var="flag" value="false"/>
            <c:forEach items="${comment.favors}" var="fa">
                <c:if test="${fa.userid eq sessionScope.uid && fa.favortype eq sessionScope.userType}">
                    <c:set var="flag" value="true"/>
                </c:if>
            </c:forEach>
            <c:if test="${flag}"> <span class="red" id="click_favor_${comment.commentid}">取消点赞</span></c:if><c:if test="${!flag}"><span  id="click_favor_${comment.commentid}">点赞</span></c:if>(<span id="count_${comment.commentid}">${fn:length(comment.favors)}</span>)
        </a></p>
    <div class="dropdown" style="margin-top:3.5%;margin-left:94%;">
        <a data-toggle="dropdown" href="javascript:void(0)" onmousedown="seeRecomment(${comment.commentid})">回复<span  class="caret"></span></a>
        <ul data-stopPropagation="true" class="dropdown-menu" style="margin-left: -880px;width: 980px;">
            <li  id="ul_${comment.commentid}" > <a name="hui"></a><textarea  type="text" id="recontent_${comment.commentid}" data-stopPropagation="true" onfocus="this.value = '';" style="width:95%; margin-left: 15px;"  onblur="if (this.value == '') {this.value = 'Your Comment...';}" required="">Your Comment...</textarea>
                <div class="tags" style="margin-top: 0px;" data-stopPropagation="true">
                    <ul data-stopPropagation="true" style="margin-left: 80%">
                        <input type="hidden" id="reobjectname_${comment.commentid}"+ value="${comment.uname}"/>
                        <input type="hidden" id="reobjectid_${comment.commentid}" value="${comment.id}"/>
                        <input type="hidden" id="reobjecttype_${comment.commentid}" value="${comment.idtype}"/>
                        <input type="hidden" id="reobjectnamee_${comment.commentid}"+ value="${comment.uname}"/>
                        <input type="hidden" id="reobjectide_${comment.commentid}" value="${comment.id}"/>
                        <input type="hidden" id="reobjecttypee_${comment.commentid}" value="${comment.idtype}"/>
                        <li data-stopPropagation="true"><a href="javascript:addrecomment(${comment.commentid})">Submit Comment</a></li>
                    </ul></div>
            </li>
        </ul>
    </div>

</div>
<div class="col-md-1 blog-grid1">
    <div class="categ">
        <ul>
            <li><a href="#">Lorem ipsum dolor sit amet</a></li>
            <li><a href="#">Duis aute irure dolor in culpa</a></li>
            <li><a href="#">Sunt in culpa qui illum</a></li>
            <li><a href="#">vel illum qui dolorem man</a></li>
        </ul>
    </div>
</div>
<script>
    function deleteComment(commentid) {
        if(confirm("此操作会删除所有回复，确定要删除么？")){
            $.ajax({
                type:"post",
                data:"commentid="+commentid,
                url:"${pageContext.request.contextPath}/comment/deleteCommentById.action",
                success:function (result) {
                    var divcom=$("#div_"+commentid);
                    divcom.remove();
                    $.message("删除成功");
                }
            });
        }

    }
    $("body").on('click','[data-stopPropagation]',function (e) {
        e.stopPropagation();
    });
    function seeRecomment(commentid) {
        $.ajax({
            type:"post",
            data:"commentid="+commentid,
            url:"${pageContext.request.contextPath}/recomment/selectRecoment.action",
            success:function (recomments) {
                var reul=$("#ul_"+commentid);
                var recom=$(".ul_recomment");
                recom.remove();
                for(var i=0;i<recomments.length;i++){
                    var s=getMyDate(recomments[i].recomtime);
                    var recomment=recomments[i];
                    var zxdxx=JSON.stringify(recomment);
                    reul.before("<li id='reli_"+recomment.recommentid+ "' style='margin-left: 10px;margin-top: 10px;' class='ul_recomment'>"
                        +"<a style='color: blue;display: inline;' href='id=recomment'>"+recomment.reusername+"</a>"+"回复 @"
                        +"<a style='color: blue;display: inline;' href='id=recomments'>"+recomment.reobjectname+"</a>"+":  "
                        +recomment.recontent+"      "+s+"      <a style='color:darkslategray;display: inline;' href='javascript:hui1("+zxdxx+")'>"+"回复</a></li>");
                    var type=${sessionScope.userType};
                    var id=${sessionScope.uid};
                    if(id==recomment.reuserid&&type==recomment.reusertype){
                        $("#reli_"+recomment.recommentid).append("<a  style='color:darkslategray;display: inline;' href='javascript:deleteRecomment("+recomment.recommentid+")'>删除</a>");
                    }

                }

            }
        });
    }
    function deleteRecomment(recommentid) {
        if(confirm("确认删除么？")){
            var re=$("#reli_"+recommentid);
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/recomment/deleterecomment.action",
                data:"recommentid="+recommentid,
                success:function (result) {
                    re.remove();
                    $.message("删除成功");
                }
            });
        }
    }
    function addrecomment(commentid) {
        var id=${sessionScope.uid};
        if(id==-1){
            alert("先登录呦");
        }else if(confirm("确认回复么？")){
            var reul=$("#ul_"+commentid);
            var reobjectname=$("#reobjectname_"+commentid);
            var reobjectid=$("#reobjectid_"+commentid);
            var reobjecttype=$("#reobjecttype_"+commentid);
            var reobjectname1=$("#reobjectnamee_"+commentid);
            var reobjectid1=$("#reobjectide_"+commentid);
            var reobjecttype1=$("#reobjecttypee_"+commentid);
            var recontent=$("#recontent_"+commentid);
            $.ajax({
                type:"post",
                data:"commentid="+commentid+"&recontent="+recontent.val()
                +"&reobjectname="+reobjectname.val()+"&reobjectid="+reobjectid.val()
                +"&reobjecttype="+reobjecttype.val(),
                url:"${pageContext.request.contextPath}/recomment/addrecomment.action",
                success:function (recomment) {
                    if(recomment !=null){
                        var s=getMyDate(recomment.recomtime);
                        var zxdxx=JSON.stringify(recomment);
                        reul.before("<li id='reli_"+recomment.recommentid+ "' style='margin-left: 10px;margin-top: 10px;' class='ul_recomment'>"
                            +"<a style='color: blue;display: inline;' href='id=recomment'>"+recomment.reusername+"</a>"+"回复 @"
                            +"<a style='color: blue;display: inline;' href='id=recomments'>"+recomment.reobjectname+"</a>"+":  "
                            +recomment.recontent+"      "+s+"      <a style='color:darkslategray;display: inline;' href='javascript:hui1("+zxdxx+")'>"+"回复</a><a  style='color:darkslategray;display: inline;'  href='javascript:deleteRecomment("+recomment.recommentid+")'>删除</a></li>");
                        recontent.val("");
                        reobjectname.val(reobjectname1.val());
                        reobjectid.val(reobjectid1.val());
                        reobjecttype.val(reobjecttype1.val());
                        $.message("回复成功");
                    }
                }
            });
        }

    }
    function getMyDate(str){
        var oDate = new Date(str);
        var  oYear = oDate.getFullYear();
        var   oMonth = oDate.getMonth()+1;
        var  oDay = oDate.getDate();
        var  oHour = oDate.getHours();
        var  oMin = oDate.getMinutes();
        var  oSen = oDate.getSeconds();
        var oTime = oYear +'-'+oMonth+'-'+oDay+' '+ oHour+':'+ oMin+':'+oSen;//最后拼接时间
        return oTime;
    }
    function hui1(zxdxx) {
        var recontent=$("#recontent_"+zxdxx.commentid);
        recontent.val("@"+zxdxx.reusername);
        var reobjectname=$("#reobjectname_"+zxdxx.commentid);
        var reobjectid=$("#reobjectid_"+zxdxx.commentid);
        var reobjecttype=$("#reobjecttype_"+zxdxx.commentid);
        reobjecttype.val(zxdxx.reusertype);
        reobjectname.val(zxdxx.reusername);
        reobjectid.val(zxdxx.reuserid);
    }
    function favor(commentid) {
        var id=${sessionScope.uid};
        if(id==-1){
            alert("先登录呦");
            return;
        }
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/favor/clickFavor.action",
            data:"commentid="+commentid,
            success:function(data){
                var d=document.getElementById("count_"+commentid);
                var span2=$("#click_favor_"+commentid);
                if('点赞'== span2.html()){
                    span2.html("取消点赞");
                    span2.addClass("red");
                    d.innerText=Number(d.innerText)+1;
                }else{
                    span2.html("点赞");
                    span2.removeClass("red");
                    d.innerText=Number(d.innerText)-1;
                }
            }

        });
    }
</script>
</div>
</body>
</html>
