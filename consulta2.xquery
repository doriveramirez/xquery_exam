for $bicicletas in doc("bicicletas")//bicicleta
where $bicicletas/tipo = "Carreras"
and $bicicletas/componentes/componente/costo > 20
return $bicicletas/modelo