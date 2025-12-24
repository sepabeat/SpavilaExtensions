tableextension 50120 "PurchaseHeaderFavoriteExt_LDR" extends "Purchase Header"
{
    fields
    {
        field(50100; IsFavorite_LDR; Boolean)
        {
            Caption = 'Es Favorito';
            DataClassification = ToBeClassified;
        }
    }
}