SELECT A.ID
,A.DATA
,A.INICIO
,A.FIM
,A.DISTANCIA
,M.ID AS MEIODETRANSPORTE_ID
,M.TIPO
 FROM (SELECT E.ID
        , E.DATA
        , V.INICIO
        , V.FIM
        , V.DISTANCIA
        , E.MEIODETRANSPORTE_ID
            FROM VIAGEM V INNER JOIN EVENTO E
                ON V.EVENTO_ID = E.ID
                WHERE E.DATA BETWEEN ? AND ?) A
      INNER JOIN MEIODETRANSPORTE M
        ON A.MEIODETRANSPORTE_ID = M.ID