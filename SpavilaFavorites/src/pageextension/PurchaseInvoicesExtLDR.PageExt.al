
pageextension 50111 "PurchaseInvoicesExt_LDR" extends "Purchase Invoices"
{
    Caption = 'Favoritos en Facturas de Compra';

    layout
    {
        // Insertar la columna antes de "No." (queda a la izquierda del todo)
        addbefore("No.")
        {
            field(IsFavorite_LDR; IsFavorite)
            {
                ApplicationArea = All;
                Caption = '★';
                ToolTip = 'Marcar como favorito para recordar este registro durante pruebas.';
                Editable = true;
                ShowCaption = true;
                Style = Attention;

                trigger OnValidate()
                begin
                    FavoritesMgt.ToggleFavorite(Rec.RecordId);
                    IsFavorite := FavoritesMgt.IsFavorite(Rec.RecordId);
                end;
            }
        }
    }

    actions
    {
        addfirst(processing)
        {
            action(ToggleFavorite_LDR)
            {
                Caption = 'Marcar/Desmarcar Favorito';
                ToolTip = 'Marcar o desmarcar este registro como favorito.';
                ApplicationArea = All;
                // Imagen eliminada porque 'Favorite' no es válida

                trigger OnAction()
                begin
                    FavoritesMgt.ToggleFavorite(Rec.RecordId);
                    IsFavorite := FavoritesMgt.IsFavorite(Rec.RecordId);
                end;
            }
        }
    }

    var
        FavoritesMgt: Codeunit "Favorites Mgt_LDR";
        IsFavorite: Boolean;

    trigger OnAfterGetRecord()
    begin
        // Solo lectura, sin tocar Rec ni el UI
        IsFavorite := FavoritesMgt.IsFavorite(Rec.RecordId);
    end;

    // Eliminada función GetStarStyle porque no se puede usar en StyleExpr
}