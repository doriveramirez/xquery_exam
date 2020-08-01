for $componentes in doc("bicicletas")//componentes
where $componentes/../idBicicleta = 323
return
    insert node
    <componente>
        <idComponente>5</idComponente>
        <nombreComponente>algo</nombreComponente>
        <fabricacionPropia>Si</fabricacionPropia>
        <costo>225</costo>
      </componente>
as last into $componentes   

  
