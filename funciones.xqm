module namespace examen = "http://DavidOriveExamen.com";

declare function examen:consulta1()
{
  for $bicicletas in doc("bicicletas")//bicicleta
return <modeloBicicleta>{data($bicicletas/modelo)}</modeloBicicleta>
};

declare function examen:consulta2($tipo as xs:string, $costo as xs:float)
{
  for $bicicletas in doc("bicicletas")//bicicleta
where $bicicletas/tipo = $tipo
and $bicicletas/componentes/componente/costo > $costo
return $bicicletas/modelo
};

declare updating function examen:alta($idBicicleta as xs:integer)
{
  for $componentes in doc("bicicletas")//componentes
where $componentes/../idBicicleta = $idBicicleta
return
    insert node
    <componente>
        <idComponente>5</idComponente>
        <nombreComponente>algo</nombreComponente>
        <fabricacionPropia>Si</fabricacionPropia>
        <costo>225</costo>
      </componente>
as last into $componentes      
};

declare updating function examen:baja($idBicicleta as xs:integer)
{
  for $componentes in doc("bicicletas")//componentes
where $componentes/../idBicicleta = $idBicicleta
return delete node $componentes/componente
};

declare updating function examen:modificacion($fabricacionPropia as xs:string, $modelo as xs:string)
{
  for $componente in doc("bicicletas")//componente
where $componente/fabricacionPropia = $fabricacionPropia and
$componente/../../modelo = $modelo
return
  replace value of node $componente/costo with $componente/costo + 15
};