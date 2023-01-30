<%-- 
    Document   : detail
    Created on : Jan 29, 2023, 9:40:02 PM
    Author     : asus
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            body {
                background: rgb(99, 39, 120);
            }

            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(99, 39, 120);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 11px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
        </style>
    </head>
    <jsp:include page="layout/head.jsp"/>
    <body>
        <jsp:include page="layout/header.jsp"/>
        <jsp:include page="layout/menu.jsp"/>




        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Edogaru</span><span class="text-black-50">edogaru@mail.com.my</span><span> </span></div>
                </div>
                <div class="col-md-5 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">User's Profile</h4>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6"><label class="labels">Name</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-6"><label class="labels">Surname</label><input type="text" class="form-control" value="" ></div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12"><label class="labels">Mobile Number</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-12"><label class="labels">Postcode</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-12"><label class="labels">State</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-12"><label class="labels">Area</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-12"><label class="labels">Email ID</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-12"><label class="labels">Education</label><input type="text" class="form-control" value=""></div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6"><label class="labels">Country</label><input type="text" class="form-control" value=""></div>
                            <div class="col-md-6"><label class="labels">State/Region</label><input type="text" class="form-control" value="" ></div>
                        </div>
           
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>





<jsp:include page="layout/chatbot.jsp"/>
<jsp:include page="layout/footer.jsp"/>
</body>
</html>