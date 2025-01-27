!observe.

+!observe : true 
  <- .wait(200); 
    ?myTools(A1, A2, Id);  // discover the tools
  	println("agente criado");
    !consumeItems(Id).

+!consumeItems(Id): true
<- .wait(1000);
get_para_Classes(Item);
!processItem(Item, Id);
!!consumeItems(Id).

+!processItem(null, Id) : true
<- .my_name(Me).
//println(Me,": null").

+!processItem(Keyword, Id) : true
<-  executar_abrangente(Keyword, 30, Result1)[artifact_id(Id)];
	executar_especifico(Result1, Result2)[artifact_id(Id)];
	isEmpty(Result2, Test)[artifact_id("entrada")];
	!decidir(Result1, Result2, Test, Id).	

+!decidir(Result1, Result2, Test, Id) : Test
<- .my_name(Me); println(Me,": vazio");
	executar_getIndividuos(Result1, 20, Result3)[artifact_id(Id)];
	put_less_value(Result3);
	put(Result3).
	
+!decidir(Result1, Result2, Test, Id) : true
<- .my_name(Me); println(Me,": n�o vazio");
	executar_getIndividuos(Result2, 20, Result3)[artifact_id(Id)];
	put_less_value(Result3);
	put(Result3).

+?myTools(A1, A2, A3): true 
  <- lookupArtifact("entrada",A1);
  	 lookupArtifact("saida",A2);
	 .my_name(N);
	 lookupArtifact(N,A3).

-?myTools(A1, A2, A3): true 
  <- .wait(100); 
     ?myTool(A1, A2, A3).