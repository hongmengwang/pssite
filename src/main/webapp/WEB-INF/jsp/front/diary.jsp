<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<div class="container-fluid">
    <c:forEach items="${diaryList}" var="diary">
        <div>
            <div class="span12" style="margin-left: 0px;">
                <div class="alert">
                    <h4>${diary.content}</h4>
                    <c:if test="${diary.pic != null && diary.pic != ''}">
                        <img src="${context}/${diary.pic}" width="400"/>
                    </c:if>
                    <span class="label" style="margin-top:7px;">${diary.entryDate}</span>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<section id=wraper>
    <section id=main>

        <section class='layout'>
            <article class='article'>
                <div class='border'>
                    <div class='jarakgrid'>
                        <h2><a href=#rel="bookmark">Lorem Ipsum</a></h2>
                        <div class='hr'></div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut egestas arcu vel diam aliquet hendrerit in at enim. Nam cursus tincidunt ante id bibendum. Suspendisse id augue felis. Phasellus ac lorem diam. Mauris lacinia tortor at enim gravida mattis. Phasellus rhoncus elementum lobortis. Nulla ornare orci eu urna condimentum adipiscing. &hellip; <a class='more' href="#">Lanjut &raquo;</a></p>
                    </div>
                </div>
            </article>
            <article class='article'>
                <div class='border'>
                    <div class='jarakgrid'>
                        <h2><a href=#rel="bookmark">Lorem Ipsum</a></h2>
                        <div class='hr'></div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut egestas arcu vel diam aliquet hendrerit in at enim. Nam cursus tincidunt ante id bibendum. Suspendisse id augue felis. Phasellus ac lorem diam. Mauris lacinia tortor at enim gravida mattis. Phasellus rhoncus elementum lobortis. Nulla ornare orci eu urna condimentum adipiscing. &hellip; <a class='more' href="#">Lanjut &raquo;</a></p>
                    </div>
                </div>
            </article>
            <article class='article'>
                <div class='border'>
                    <div class='jarakgrid'>
                        <h2><a href=#rel="bookmark">Lorem Ipsum</a></h2>
                        <div class='hr'></div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut egestas arcu vel diam aliquet hendrerit in at enim. Nam cursus tincidunt ante id bibendum. Suspendisse id augue felis. Phasellus ac lorem diam. Mauris lacinia tortor at enim gravida mattis. Phasellus rhoncus elementum lobortis. Nulla ornare orci eu urna condimentum adipiscing. &hellip; <a class='more' href="#">Lanjut &raquo;</a></p>
                    </div>
                </div>
            </article>
        </section>

    </section>
</section>
<section class=fotr>
    <footer class="dhoma bawahan">
        <hgroup id=footer>
            <h6>CopyLeft &copy; 2012 <a href="http://OmaGue.com" title="OmaGue.com">OmaGue.com</a></h6>
            <h6>Creative design by: <a href="http://OmaGue.com/about" title="Deny E.Wicahyo">dhenycahyoe</a></h6>
        </hgroup>
    </footer>
</section>
<style type="text/css">
    @import url(http://fonts.googleapis.com/css?family=Droid+Sans:400,700);
        /*CSS Reset*/
    html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, address, big, cite, code, del, dfn, em,
    img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody,
    tfoot, thead, tr, th, td, section, aside, nav, footer, header, hgroup, article, audio, video, canvas, command, datalist, details, embed, figcaption,
    figure, keygen, mark, meter, output, progress, rp, rt, ruby, summary, time{margin:0; padding:0; border:0; outline:0; font-size:100%; vertical-align:baseline; background:transparent}
    body{font-size:100%;font-family: 'Droid Sans', sans-serif;word-wrap:break-word; background:#eee}
    body:before, body:after{content:""; display:table}body:after{clear:both}
    *{padding:0; margin:0; -webkit-transition:width 0.5s; -moz-transition:width 0.5s; -o-transition:width 0.5s; transition:width 0.5s}
    ::-moz-selection{background:#555; color:#fff; text-shadow:none}::selection{background:#555; color:#fff; text-shadow:none}
    a{color:#000; text-decoration:none}a:hover{color:#00657E; -webkit-transition:all 0.5s ease-out; -moz-transition:all 0.5s ease-out; -o-transition:all 0.5s ease-out; transition:all 0.5s ease-out}
    .dhoma{width:100%; margin:0; overflow:hidden}
        /*Layout*/
    .layout{width:81.25%;margin:10% auto 0 auto;}.article{margin:20px 0}
    .jarakgrid{padding:10px}.article h2{font-size:1.2em;line-height:1.3em;}
    .article p{text-align:justify;font-size:.9em;margin-top:10px;}
    .article h2,.more{font-family: 'Droid Sans', sans-serif;font-weight: 700;text-shadow: 1px 1px 0px #F2F2F2, 1px 2px 0px #B1B1B2;}.more{font-size:.9em;}
    .hr{content:""; height:1px; width:100%; background:#272727; background:-webkit-gradient(linear,left top,right top,color-stop(0%,transparent),color-stop(50%,#272727),color-stop(100%,#dfecaf)); background:-webkit-linear-gradient(left,transparent 0%,#272727 50%,transparent 100%); background:-moz-linear-gradient(left,transparent 0%,#272727 50%,transparent 100%); background:-ms-linear-gradient(left,transparent 0%,#272727 50%,transparent 100%); background:-o-linear-gradient(left,transparent 0%,#272727 50%,transparent 100%); background:linear-gradient(left,transparent 0%,#272727 50%,transparent 100%)}
    .border{position:relative;border:1px solid #bbb;margin:10px 0px;padding:5px 5px 0px 5px;background-color:#ddd;-moz-box-shadow:inset 0 1px 1px #eeeeee;-ms-box-shadow:inset 0 1px 1px #eeeeee;-o-box-shadow:inset 0 1px 1px #eeeeee;-webkit-box-shadow:inset 0 1px 1px #EEE;box-shadow:inset 0 1px 1px #EEE;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;}
    .border:before,.border:after{z-index:-1;position:absolute;content:"";bottom:15px;left:10px;width:50%;top:50%;max-width:300px;background:rgba(0, 0, 0, .7);-webkit-box-shadow:0 15px 10px rgba(0, 0, 0, .7);-moz-box-shadow:0 15px 10px rgba(0, 0, 0, .7);box-shadow:0 15px 10px rgba(0, 0, 0, .7);-webkit-transform:rotate(-3deg);-moz-transform:rotate(-3deg);-o-transform:rotate(-3deg);-ms-transform:rotate(-3deg);transform:rotate(-3deg);}
    .border:after{-webkit-transform:rotate(3deg);-moz-transform:rotate(3deg);-o-transform:rotate(3deg);-ms-transform:rotate(3deg);transform:rotate(3deg);right:10px;left:auto;}
        /*Footer*/
    html, body{height:100%}
    #wraper{min-height:100%}
    #main{overflow:auto;padding-bottom:.1px}
    .fotr{position:relative; margin-top:-.1px; height:0; clear:both}
    .bawahan{border-top:5px solid #272727; border-bottom:10px solid #272727}
    #footer{background:#222; box-shadow:0 2px 8px rgba(0,0,0,.4) inset; border-top:1px solid #000; border-bottom:1px solid #000; padding:10px 10px; text-align:center; color:#aaa; text-shadow:0px 1px #000; font-size:12px; line-height:1.3em}
    #footer a{color:#aaa; text-shadow:0px 1px #000}#footer a:hover{color:#fff}
</style>
<jsp:include page="../base/footer.jsp" />