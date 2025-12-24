pageextension 50142 "SalesOrderCardExt_LDR" extends "Sales Order"
{
    Caption = 'Favoritos en Ficha Pedido Venta';

    layout
    {
        addafter("No.")
        {
            field(IsFavoriteSalesOrder_LDR; Rec.IsFavoriteSalesOrder_LDR)
            {
                ApplicationArea = All;
                Caption = 'Es Favorito (Pedido Venta)';
                ToolTip = 'Marcar como favorito.';
                Editable = true;
            }
        }
    }
}
