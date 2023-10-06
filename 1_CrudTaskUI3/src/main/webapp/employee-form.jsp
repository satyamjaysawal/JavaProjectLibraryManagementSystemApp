<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management Application</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/list">Employee Management</a>
    </nav>
</header>
<br>

<div class="container col-md-6">
    <div class="card">
        <div class="card-body">
            <c:choose>
                <c:when test="${employee != null}">
                    <form action="update" method="post">
                </c:when>
                <c:otherwise>
                    <form action="insert" method="post">
                </c:otherwise>
            </c:choose>

            <h2>
                <c:choose>
                    <c:when test="${employee != null}">
                        Edit Employee
                    </c:when>
                    <c:otherwise>
                        Add New Employee
                    </c:otherwise>
                </c:choose>
            </h2>

            <c:if test="${employee != null}">
                <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
            </c:if>

            <div class="form-group">
                <label>Employee First Name</label>
                <input type="text" class="form-control" value="<c:out value='${employee.firstname}' />" name="firstname" required="required">
            </div>

            <div class="form-group">
                <label>Employee Last Name</label>
                <input type="text" class="form-control" value="<c:out value='${employee.lastname}' />" name="lastname" required="required">
            </div>

            <div class="form-group">
                <label>Employee Email</label>
                <input type="email" class="form-control" value="<c:out value='${employee.email}' />" name="email" required="required" placeholder="johndoe@example.com" pattern="[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*" title="Enter a valid email address">
            </div>

            <div class="form-group">
                <label>Employee Country</label>
                <input type="text" class="form-control" value="<c:out value='${employee.country}' />" name="country">
            </div>

            <div class="form-group">
                <label>Gender</label>
                <select class="form-control" name="gender" required="required">
                    <c:choose>
                        <c:when test="${employee.gender == 'Male'}">
                            <option value="Male" selected>Male</option>
                            <option value="Female">Female</option>
                            <option value="Transgender">Transgender</option>
                        </c:when>
                        <c:when test="${employee.gender == 'Female'}">
                            <option value="Male">Male</option>
                            <option value="Female" selected>Female</option>
                            <option value="Transgender">Transgender</option>
                        </c:when>
                        <c:when test="${employee.gender == 'Transgender'}">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Transgender" selected>Transgender</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Transgender">Transgender</option>
                        </c:otherwise>
                    </c:choose>
                </select>
            </div>

            <div class="form-group">
                <label>Street Address</label>
                <input type="text" class="form-control" name="streetAddress" value="<c:out value='${employee.address.streetAddress}' />" required="required">
            </div>

            <div class="form-group">
                <label>Apartment</label>
                <input type="text" class="form-control" name="apartment" value="<c:out value='${employee.address.apartment}' />" required="required">
            </div>

            <div class="form-group">
                <label>City</label>
                <input type="text" class="form-control" name="city" value="<c:out value='${employee.address.city}' />" required="required">
            </div>

            <div class="form-group">
                <label>State</label>
                <input type="text" class="form-control" name="state" value="<c:out value='${employee.address.state}' />" required="required">
            </div>

            <div class="form-group">
                <label>Postal Code</label>
                <input type="text" class="form-control" name="postalCode" value="<c:out value='${employee.address.postalCode}' />" required="required">
            </div>

            <div class="form-group">
                <label>Landmark</label>
                <input type="text" class="form-control" name="landmark" value="<c:out value='${employee.address.landmark}' />">
            </div>

            <div class="form-group">
                <label>Phone Number</label>
                <input type="text" class="form-control" name="phoneNumber" value="<c:out value='${employee.phoneNumber}' />" required="required">
            </div>

            <div class="form-group">
                <label>Department ID</label>
                <input type="text" class="form-control" name="departmentId" value="<c:out value='${employee.departmentId}' />" required="required">
            </div>

            <div class="form-group">
                <label>Job Title</label>
                <input type="text" class="form-control" name="jobTitle" value="<c:out value='${employee.jobTitle}' />" required="required">
            </div>

            <div class="form-group">
                <label>Salary</label>
                <input type="text" class="form-control" name="salary" value="<c:out value='${employee.salary}' />" required="required">
            </div>

            <div class="form-group">
                <label>Work Location</label>
                <input type="text" class="form-control" name="workLocation" value="<c:out value='${employee.workLocation}' />" required="required">
            </div>

            <button type="submit" class="btn btn-success">Save</button>
            <a href="<%=request.getContextPath()%>/list" class="btn btn-secondary">Cancel</a>
            </form>
            <!-- Closing form tag -->
        </div>
    </div>
</div>
</body>
</html>
