#Include 'Totvs.ch'

/*/{Protheus.docn MTA410
(long_description)
@type  Function
@author user
@since 10/01/2025
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
    /*/
User Function MTA410()

    Local lValida := .T.

    Local nX      := 1

    Local aCFOPs  := {}

    

    for nX := 1 to len(aCols)

        AAdd(aCFOPs, aCols[nX, GDFieldPos("C6_CF", aHeader)])

    Next


    for nX := 2 to len(aCFOPs)

        If aCFOPs[nX] != aCFOPs[1]

            MsgStop("Não pode existir CFOPs diferentes no mesmo pedido")

            lValida := .F.

            Exit

        EndIf

    Next

Return lValida
