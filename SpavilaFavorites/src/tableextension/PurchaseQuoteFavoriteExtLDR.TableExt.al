tableextension 50130 "PurchaseQuoteFavoriteExt_LDR" extends "Purchase Header"
{
    fields
    {
        field(50110; IsFavoriteQuote_LDR; Boolean)
        {
            Caption = 'Es Favorito (Oferta)';
            DataClassification = ToBeClassified;
        }
    }
}
