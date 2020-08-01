for $componente in doc("bicicletas")//componente
where $componente/fabricacionPropia = "Si" and
$componente/../../modelo = "piccolina"
return
  replace value of node $componente/costo with $componente/costo + 15