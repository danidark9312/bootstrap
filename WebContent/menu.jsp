<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <!-- style="cursor:default" -->
      <a class="navbar-brand" href="#"  onclick="selectMenu(this,0)" role="0"><%=title%></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="javascript:void(0)" onclick="selectMenu(this,0)" role="0" >ÍNICIO</a></li>
      <li><a href="javascript:void(0)" onclick="selectMenu(this,1)" role="1" >POLÍTICAS DE PRIVACIDAD</a></li>
      <li><a href="javascript:void(0)" onclick="selectMenu(this,2)" role="2">TERMINOS Y CONDICIONES</a></li>
      <li><a href="javascript:void(0)" onclick="selectMenu(this,3)" role="2">TESTIMONIOS</a></li>
      <li><a id="contactenos" href="javascript:void(0)" onclick="selectMenu(this,4);loadImages()" role="3">CONTACTANOS</a></li>
      <li><a id="contactenos" href="javascript:void(0)" onclick="selectMenu(this,5);" role="3">AMARRES</a></li> 
    </ul>
  </div>
</nav>