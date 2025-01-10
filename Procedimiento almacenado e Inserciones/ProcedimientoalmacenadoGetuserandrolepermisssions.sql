CREATE PROCEDURE GetUserAndRolePermissions
    @user_id BIGINT,
    @entitycatalog_id INT
AS
BEGIN
    -- Obtener permisos asignados directamente al usuario
    SELECT 
        'Usuario' AS TipoPermiso,
        p.name, 
        p.description, 
        p.can_create, 
        p.can_read, 
        p.can_update, 
        p.can_delete, 
        p.can_import, 
        p.can_export
    FROM PermiUser pu
    JOIN Permission p ON pu.permission_id = p.id_permi
    WHERE pu.usercompany_id = @user_id
      AND pu.entitycatalog_id = @entitycatalog_id
      AND pu.peusr_include = 1

    UNION
	-- Consulta especifica granular sobre los módulos y las exclusiones de los permisos
    SELECT 
        'Usuario' AS TipoPermiso,
        p.name, 
        p.description, 
        p.can_create, 
        p.can_read, 
        p.can_update, 
        p.can_delete, 
        p.can_import, 
        p.can_export
    FROM PermiUserRecord pur
    JOIN Permission p ON pur.permission_id = p.id_permi
    WHERE pur.usercompany_id = @user_id
      AND pur.entitycatalog_id = @entitycatalog_id
      

    UNION

    -- Obtener permisos asignados al usuario a través de su rol
    SELECT 
        'Rol' AS TipoPermiso,
        p.name, 
        p.description, 
        p.can_create, 
        p.can_read, 
        p.can_update, 
        p.can_delete, 
        p.can_import, 
        p.can_export
    FROM UserCompany uc
    JOIN Role r ON uc.role_id = r.id_role
    JOIN PermiRole pr ON r.id_role = pr.role_id
    JOIN Permission p ON pr.permission_id = p.id_permi
    WHERE uc.user_id = @user_id
      AND pr.entitycatalog_id = @entitycatalog_id
      AND pr.perol_include = 1

    UNION
	-- Tomamos tambien en cuenta en el rol especifico del usuario que estamos consultando
	-- tanto si es una inclusión de permiso como una exclusión especifica y dependiendo del 
	-- módulo haremos que sea por encima los permisos del usuario sobre los permisos del rol
    SELECT 
        'Rol' AS TipoPermiso,
        p.name, 
        p.description, 
        p.can_create, 
        p.can_read, 
        p.can_update, 
        p.can_delete, 
        p.can_import, 
        p.can_export
    FROM UserCompany uc
    JOIN Role r ON uc.role_id = r.id_role
    JOIN PermiRoleRecord prr ON r.id_role = prr.role_id
    JOIN Permission p ON prr.permission_id = p.id_permi
    WHERE uc.user_id = @user_id
      AND prr.entitycatalog_id = @entitycatalog_id
      
END;