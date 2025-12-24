
codeunit 50102 "Favorites Mgt_LDR"
{
    Subtype = Normal; // No SingleInstance

    procedure IsFavorite(RecordId: RecordId): Boolean
    var
        UserFavorite: Record UserFavorite;
        UserId50: Code[50];
    begin
        UserId50 := GetUserIdSafe();
        if UserFavorite.Get(UserId50, RecordId) then
            exit(UserFavorite."Is Favorite");
        exit(false);
    end;

    procedure ToggleFavorite(RecordId: RecordId)
    var
        UserFavorite: Record UserFavorite;
        UserId50: Code[50];
    begin
        UserId50 := GetUserIdSafe();

        if UserFavorite.Get(UserId50, RecordId) then begin
            UserFavorite."Is Favorite" := not UserFavorite."Is Favorite";
            UserFavorite.Modify(true);
        end else begin
            UserFavorite.Init();
            UserFavorite."User ID" := UserId50;
            UserFavorite."Record ID" := RecordId;
            UserFavorite."Is Favorite" := true;
            UserFavorite.Insert(true);
        end;
    end;

    local procedure GetUserIdSafe(): Code[50]
    var
        uidTxt: Text;
    begin
        // System function UserId() devuelve el Id del usuario actual.
        uidTxt := UserId();
        exit(CopyStr(uidTxt, 1, 50));
    end;
}