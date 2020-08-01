for $componentes in doc("bicicletas")//componentes
where $componentes/../idBicicleta = 324
return delete node $componentes/componente