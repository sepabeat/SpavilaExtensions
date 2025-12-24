pageextension 50131 "PurchaseQuotesExt_LDR" extends "Purchase Quotes"
{
    Caption = 'Favoritos en Ofertas de Compra';

    layout
    {
        addafter("No.")
        {
            field(IsFavoriteQuote_LDR; Rec.IsFavoriteQuote_LDR)
            {
                ApplicationArea = All;
                Caption = 'Es Favorito (Oferta)';
                ToolTip = 'Filtrar por favoritos.';
                Editable = true;
            }
        }
    }

}
