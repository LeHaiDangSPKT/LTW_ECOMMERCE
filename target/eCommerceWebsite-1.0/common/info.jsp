<%@include file="taglib.jsp"%>
<c:if test="${not empty message}">
  <div class="alert text-white bg-${alert}" role="alert">
    <div class="iq-alert-icon">
      <i class="fa-solid fa-circle-check"></i>
    </div>
    <div class="iq-alert-text">${message}</div>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <i class="fa-solid fa-circle-xmark"></i>
    </button>
  </div>
</c:if>