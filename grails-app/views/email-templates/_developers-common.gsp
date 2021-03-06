<ul>
    <li><strong>Event Code:</strong> ${eventCode}</li>
    <li><strong>Date:</strong> ${new Date()}</li>
    <g:if test="${userInstance}">
        <li><strong>User:</strong> ${userInstance}</li>
    </g:if>
    <g:if test="${currentRequest}">
        <li><strong>Host:</strong> ${currentRequest.protocol} ${currentRequest.scheme} ${currentRequest.remoteHost} ${currentRequest.serverPort}</li>
        <li><strong>Request URL:</strong> ${currentRequest.method} ${requestURL}</li>
        <li><strong>Client IP:</strong> ${currentRequest.getRemoteAddr()}</li>
        <li>
            <strong>Headers:</strong>
            <small>
                <ul>
                    <g:each in="${headers}">
                        <li><strong>${it.key}:</strong> ${it.value}</li>
                    </g:each>
                </ul>
            </small>
        </li>
        <li>
            <strong>Session Variables:</strong>
            <small>
                <ul>
                    <g:each in="${currentRequest.session.getAttributeNames()}" var="name">
                        <li><strong>${name}:</strong> ${currentRequest.session.getAttribute(name)}</li>
                    </g:each>
                </ul>
            </small>
        </li>
    </g:if>
    <g:if test="${frontendURL}">
        <li><strong>Frontend URL:</strong> ${frontendURL}</li>
    </g:if>
    <g:if test="${codeExecutionAt}">
        <li><strong>Code location:</strong> ${codeExecutionAt}</li>
    </g:if>
    <g:if test="${info}">
        <li>
            <strong>Info:</strong>
            <small>
                <g:if test="${info instanceof java.util.Map}">
                    <ul>
                        <g:each in="${info}">
                            <li><strong>${it.key}:</strong> ${it.value}</li>
                        </g:each>
                    </ul>
                </g:if>
                <g:elseif test="${info instanceof java.util.List}">
                    <ul>
                        <g:each in="${info}">
                            <li>${it}</li>
                        </g:each>
                    </ul>
                </g:elseif>
                <g:else>
                    ${info}
                </g:else>
            </small>
        </li>
    </g:if>
</ul>