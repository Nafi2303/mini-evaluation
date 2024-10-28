<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 04/10/2024
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<body>
<div>
    <jsp:include page="./welcome.jsp" />
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Liste des cours</h5>
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Matiere</th>
                                <th>Professeur</th>
                                <th>Classe</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${coursList}" var="cours">
                                <tr>
                                    <td>${cours.id}</td>
                                    <td>${cours.matiere}</td>
                                    <td>${cours.professeur}</td>
                                    <td>${cours.classe}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Ajouter un cours</h5>
                        <form action="course" method="post">

                            <div class="mb-3">
                                <label for="inputMatiere" class="form-label">Matieres</label>
                                <input type="text" name="matiere" class="form-control" id="inputMatiere">
                            </div>
                            <div class="mb-3">
                                <label for="inputProfesseur" class="form-label">Professeur</label>
                                <input type="text" name="professeur" class="form-control" id="inputProfesseur">
                            </div>
                            <div class="mb-3">
                                <label for="inputClasse" class="form-label">Classe</label>
                                <input type="text" name="classe" class="form-control" id="inputClasse">
                            </div>
                            <button type="submit" class="btn btn-primary">Ajouter</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>