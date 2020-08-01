for $bicicletas in doc("bicicletas")//bicicleta
return <modeloBicicleta>{data($bicicletas/modelo)}</modeloBicicleta>