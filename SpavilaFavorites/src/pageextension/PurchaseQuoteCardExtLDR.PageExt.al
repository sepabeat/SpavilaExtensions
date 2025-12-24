pageextension 50132 "PurchaseQuoteCardExt_LDR" extends "Purchase Quote"
{
    Caption = 'Favoritos en Ficha Oferta Compra';

    layout
    {
        addafter("No.")
        {
            field(IsFavoriteQuote_LDR; Rec.IsFavoriteQuote_LDR)
            {
                ApplicationArea = All;
                Caption = 'Es Favorito (Oferta)';
                ToolTip = 'Marcar como favorito.';
                Editable = true;
            }
        }
    }
}
