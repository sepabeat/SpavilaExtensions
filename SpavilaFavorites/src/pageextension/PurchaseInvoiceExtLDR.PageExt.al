
pageextension 50112 "PurchaseInvoiceExt_LDR" extends "Purchase Invoice"
{
    Caption = 'Favoritos en Facturas de Compra';


    layout
    {
        // Insertar la columna antes de "No." (queda a la izquierda del todo)
        addafter("No.")
        {
            field(IsFavorite_LDR; Rec.IsFavorite_LDR)
            {
                ApplicationArea = All;
                ToolTip = 'Marcar como favorito para este registro.';
                Editable = true;
            }
        }
    }






}