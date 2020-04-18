<%--
  Created by IntelliJ IDEA.
  User: cena
  Date: 02/03/2020
  Time: 00:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="where_togo_area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-3">
                <div class="form_area">
                    <h3>Ou voulez-vous aller ?</h3>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="search_wrap">
                    <form class="search_form" action="enregistrerBillet" method="get">
                        <div class="input_field">
                            <input type="text" name="nom" id="nom" placeholder="Lieu?">
                        </div>
                        <div class="input_field">
                            <input id="datepicker" name="date" id="date" placeholder="Date">
                        </div>
                        <div class="input_field">
                            <select name="transport" id="transport">
                                <option data-display="Type de transport">Type de transport</option>
                                <option value="1">Classic</option>
                                <option value="2">Prestige</option>
                                <option value="3">premium</option>
                            </select>
                        </div>
                        <div class="search_btn">
                            <button class="boxed-btn4 " type="submit">Rechercher</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
