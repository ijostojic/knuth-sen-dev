<div class="card text-center flex-item ">
    <div class="card-header">
        <h2>Available Forms</h2>
    </div>
    <div class="card-block">
        <g:if test="${!forms}">
            <div>
                <table class="formsDisplayTable" class="display" cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Creation Date</th>
                        <th>Publish Date</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </g:if>
        <g:else>
            <div>
                <table class="formsDisplayTable" class="display" cellspacing="0" width="100%" min>
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Creation Date</th>
                        <th>Publish Date</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${forms}">
                        <tr>
                            <td>${it.title}</td>
                            <td>${it.creationDate}</td>
                            <td>${it.publishDate}</td>
                            <td>
                                <label class="hiddenId" style="display: none">${it.id}</label>
                                <i class="fa fa-keyboard-o inputData fa-2x" aria-hidden="true"></i>

                                <a href="#" idc="tglr" class="popover-toggle" title="Information">
                                    <i  class="glyphicon glyphicon-info-sign" style="color:black; font-size: 20px;"> </i>
                                </a>

                            <div id="popover-content"  style="display: none;">
                                <g:each var="ass" in="${assessmentCoordinators}">
                                    <div  style="width: 200px; text-align: center" >${ass.fname}  ${ass.lname} | <a style="color:black" href="mailto:${ass.email}?Subject=Hello%20again" target="_top">Send Mail</a></div>
                                    <br />
                                </g:each>
                            </div>

                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </g:else>
    </div>
    <div class="card-footer text-muted">
        .
    </div>
</div>
