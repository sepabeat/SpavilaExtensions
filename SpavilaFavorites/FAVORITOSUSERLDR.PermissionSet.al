permissionset 50002 "FAVORITOSUSER_LDR"
{
    Caption = 'Favoritos de Usuario';
    Assignable = true;
    Permissions =
        tabledata UserFavorite = RIMD,
        codeunit "Favorites Mgt_LDR" = X;
}
