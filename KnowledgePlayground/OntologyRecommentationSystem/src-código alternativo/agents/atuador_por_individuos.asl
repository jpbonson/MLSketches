!observe.

+!observe : true 
  <- .wait(200); 
    ?myTools(A1, A2, Id);  // discover the tools
  	println("agente criado");
    !consumeItems(Id).

+!consumeItems(Id): true
<- .wait(1000);
get_para_Individuos(Item);
!processItem(Item, Id);
!!consumeItems(Id).

+!processItem(null, Id) : true
<- .my_name(Me).
//println(Me,": null").

+!processItem(Keyword, Id) : true
<-  executar_abrangente(Keyword, 50, Result)[artifact_id(Id)];
	//.nth(0,Result,X);
	//println(" TESTEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE: ", X);
	//put2(Result).
	.send("inicializador",tell,results1(Result)).
	
+?myTools(A1, A2, A3): true 
  <- lookupArtifact("entrada",A1);
  	 lookupArtifact("saida",A2);
	 .my_name(N);
	 lookupArtifact(N,A3).

-?myTools(A1, A2, A3): true 
  <- .wait(100); 
     ?myTool(A1, A2, A3).