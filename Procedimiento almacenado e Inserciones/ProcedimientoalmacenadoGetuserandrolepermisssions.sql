USE [pruebas]
GO

/****** Object:  StoredProcedure [dbo].[GetUserAndRolePermissions]    Script Date: 16/01/2025 12:06:33 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUserAndRolePermissions]
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
        p.can_export,
        0 AS Campo
    FROM PermiUser pu
    JOIN Permission p ON pu.permission_id = p.id_permi
    WHERE pu.usercompany_id = @user_id
      AND pu.entitycatalog_id = @entitycatalog_id
      AND pu.peusr_include = 1

    UNION

    -- Consulta específica granular sobre los módulos y las exclusiones de los permisos
    SELECT 
        'Usuario_record' AS TipoPermiso,
        p.name, 
        p.description, 
        p.can_create, 
        p.can_read, 
        p.can_update, 
        p.can_delete, 
        p.can_import, 
        p.can_export,
        pur.peusr_record AS Campo 
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
        p.can_export,
        0 AS Campo
    FROM UserCompany uc
    JOIN Role r ON uc.role_id = r.id_role
    JOIN PermiRole pr ON r.id_role = pr.role_id
    JOIN Permission p ON pr.permission_id = p.id_permi
    WHERE uc.user_id = @user_id
      AND pr.entitycatalog_id = @entitycatalog_id
      AND pr.perol_include = 1

    UNION

    -- Permisos específicos del rol del usuario
    SELECT 
        'Rol_record' AS TipoPermiso,
        p.name, 
        p.description, 
        p.can_create, 
        p.can_read, 
        p.can_update, 
        p.can_delete, 
        p.can_import, 
        p.can_export,
        prr.perrc_record AS Campo
    FROM UserCompany uc
    JOIN Role r ON uc.role_id = r.id_role
    JOIN PermiRoleRecord prr ON r.id_role = prr.role_id
    JOIN Permission p ON prr.permission_id = p.id_permi
    WHERE uc.user_id = @user_id
      AND prr.entitycatalog_id = @entitycatalog_id
END;
GO


