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
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Companies</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/cours">Cours</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Achats</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Vents</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Action
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Logout</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Disabled</a>
                </li>
            </ul>
            <%--<form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>--%>
        </div>
    </div>
</nav>
<div>
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
                        <h5 class="card-title">Ajout d'un cours</h5>
                        <form action="/cours" method="post">
                            <div class="mb-3">
                                <label for="inputId" class="form-label">ID</label>
                                <input type="text" name="id" class="form-control" id="inputId">
                            </div>
                            <div class="mb-3">
                                <label for="inputMatiere" class="form-label">Matieres</label>
                                <input type="text" name="matiere" class="form-control" id="inputMatiere">
                            </div>
                            <div class="mb-3">
                                <label for="inputProfesseur" class="form-label">Professeurs</label>
                                <input type="number" name="professeur" class="form-control" id="inputProfesseur">
                            </div>
                            <div class="mb-3">
                                <label for="inputClasse" class="form-label">Professeurs</label>
                                <input type="number" name="classe" class="form-control" id="inputClasse">
                            </div>
                            <button type="submit" class="btn btn-primary">Ajouter Cours</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>