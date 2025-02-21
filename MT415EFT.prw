#Include 'Totvs.ch'

/*/{Protheus.doc} MT415EFT
Validação da efetivação ou não do Orçamento em questão.
@type user function
@author user
@since 17/02/2025
@version version
@param Sem Parametros
@return lValida
@example
(examples)
@see (links_or_references)
/*/
User Function MT415EFT()

	Local lValida   := .T.

	Local cCliente  := AllTrim(SCJ->CJ_CLIENTE)

	Local dDataCert := Ctod("")


	DBSelectArea("SZ1")

	DBSetOrder(1)

	If(SZ1->(DBSeek(xFilial("SZ1")+cCliente)))

	  dDataCert := SZ1->Z1_CERT

		If !Empty(dDataCert) .And. dDataCert < Date()

			MsgAlert(" Nao efetivar o orcamento")

			lValida := .F.

		EndIf

	EndIf

Return (lValida)







