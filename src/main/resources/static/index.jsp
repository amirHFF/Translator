<%--
  Created by IntelliJ IDEA.
  User: amir_pc
  Date: 10/23/2019
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>
<body>
<div class="text-center" style="margin-bottom: 40px">
    <h3 class="title">Welcome to my converter</h3>
</div>
<div class="container-fluid">
    <form action="index" method="get">
        <div style="height: 30px ;width: 100%; background-color: dodgerblue" onclick="byteConverterStatus()"></div>
        <div id="byteConverter" class="border" style="padding-top: 2% ; padding-bottom: 2%">
            <div class="d-flex justify-content-center">
                <div class="row form-group col-sm-10">
                    <div class="row col-sm-6">
                        <label for="txtString" class="label form-group col-sm-3">Enter String </label>
                        <input id="txtString" name="str" type="text" class="col-sm-8 form-control">
                    </div>
                    <div class="row col-sm-6">
                        <label for="txtString" class="label col-sm-3">your Byte </label>
                        <input id="txtByte" name="byt" type="text" class="col-sm-8 form-control"
                               value="${requestScope.bytee}">
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <div class="row form-group col-sm-10">
                    <div class="row col-sm-6">
                        <label for="txtString" class="label form-group col-sm-3">Enter String </label>
                        <input id="txtString2" name="str2" type="text" class="col-sm-8 form-control">
                    </div>
                    <div class="row col-sm-6">
                        <label for="txtString" class="label col-sm-3">your Utf8 </label>
                        <input id="txtUtf8" name="utf" type="text" class="col-sm-8 form-control"
                               value="${requestScope.utf}">
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-center">
                <div class="row form-group col-sm-10">
                    <div class="row col-sm-6">
                        <label for="txtString" class="label form-group col-sm-3">Enter String </label>
                        <input id="txtString3" name="str3" type="text" class="col-sm-8 form-control">
                    </div>
                    <div class="row col-sm-6">
                        <label for="txtString" class="label col-sm-3">your decimal </label>
                        <input id="txtDecimal" name="dcm" type="text" class="col-sm-8 form-control">
                    </div>
                </div>
            </div>
        </div>
            <div class="row d-flex justify-content-center">
                <input class="col-sm-2 btn-primary form-control" type="submit" value="Convert">
                <div class="col-sm-1"></div>
                <input class="col-sm-2 btn-danger form-control " type="button" value="delete">
            </div>
    </form>
</div>
</body>
<script>
function byteConverterStatus() {
    $("#byteConverter").toggle(500);
}
</script>
</html>
