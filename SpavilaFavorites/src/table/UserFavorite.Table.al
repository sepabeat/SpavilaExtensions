table 50102 UserFavorite
{
    Caption = 'Favorito de Usuario';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'Usuario';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(2; "Record ID"; RecordId)
        {
            Caption = 'ID de Registro';
            DataClassification = SystemMetadata;
        }
        field(3; "Is Favorite"; Boolean)
        {
            Caption = 'Es Favorito';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "User ID", "Record ID")
        {
            Clustered = true;
        }
    }
}
