pageextension 50141 "SalesOrderListExt_LDR" extends "Sales Order List"
{
    Caption = 'Favoritos en Pedidos de Venta';

    layout
    {
        addafter("No.")
        {
            field(IsFavoriteSalesOrder_LDR; Rec.IsFavoriteSalesOrder_LDR)
            {
                ApplicationArea = All;
                Caption = 'Es Favorito (Pedido Venta)';
                ToolTip = 'Filtrar por favoritos.';
                Editable = true;
            }
        }
    }

}
