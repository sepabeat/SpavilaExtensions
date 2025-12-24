tableextension 50140 "SalesOrderFavoriteExt_LDR" extends "Sales Header"
{
    fields
    {
        field(50120; IsFavoriteSalesOrder_LDR; Boolean)
        {
            Caption = 'Es Favorito (Pedido Venta)';
            DataClassification = ToBeClassified;
        }
    }
}
