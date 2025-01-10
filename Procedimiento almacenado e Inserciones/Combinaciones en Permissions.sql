-- Combinación 1
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Ningún Permiso', 'NP: Ningún permiso', 0, 0, 0, 0, 0, 0);

-- Combinación 2
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Solo Crear', 'SC: Solo crear', 1, 0, 0, 0, 0, 0);

-- Combinación 3
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Solo Leer', 'SL: Solo leer', 0, 1, 0, 0, 0, 0);

-- Combinación 4
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear y Leer', 'CL: Crear y leer', 1, 1, 0, 0, 0, 0);

-- Combinación 5
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Solo Actualizar', 'SA: Solo actualizar', 0, 0, 1, 0, 0, 0);

-- Combinación 6
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear y Actualizar', 'CA: Crear y actualizar', 1, 0, 1, 0, 0, 0);

-- Combinación 7
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer y Actualizar', 'LA: Leer y actualizar', 0, 1, 1, 0, 0, 0);

-- Combinación 8
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer y Actualizar', 'CLA: Crear, leer y actualizar', 1, 1, 1, 0, 0, 0);

-- Combinación 9
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Solo Eliminar', 'SE: Solo eliminar', 0, 0, 0, 1, 0, 0);

-- Combinación 10
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear y Eliminar', 'CE: Crear y eliminar', 1, 0, 0, 1, 0, 0);

-- Combinación 11
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer y Eliminar', 'LE: Leer y eliminar', 0, 1, 0, 1, 0, 0);

-- Combinación 12
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer y Eliminar', 'CLE: Crear, leer y eliminar', 1, 1, 0, 1, 0, 0);

-- Combinación 13
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Actualizar y Eliminar', 'AE: Actualizar y eliminar', 0, 0, 1, 1, 0, 0);

-- Combinación 14
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Actualizar y Eliminar', 'CAE: Crear, actualizar y eliminar', 1, 0, 1, 1, 0, 0);

-- Combinación 15
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Actualizar y Eliminar', 'LAE: Leer, actualizar y eliminar', 0, 1, 1, 1, 0, 0);

-- Combinación 16
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Actualizar y Eliminar', 'CLAE: Crear, leer, actualizar y eliminar', 1, 1, 1, 1, 0, 0);

-- Combinación 17
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Solo Importar', 'SI: Solo importar', 0, 0, 0, 0, 1, 0);

-- Combinación 18
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear e Importar', 'CI: Crear e importar', 1, 0, 0, 0, 1, 0);

-- Combinación 19
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer e Importar', 'LI: Leer e importar', 0, 1, 0, 0, 1, 0);

-- Combinación 20
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer e Importar', 'CLI: Crear, leer e importar', 1, 1, 0, 0, 1, 0);

-- Combinación 21
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Actualizar e Importar', 'AI: Actualizar e importar', 0, 0, 1, 0, 1, 0);

-- Combinación 22
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Actualizar e Importar', 'CAI: Crear, actualizar e importar', 1, 0, 1, 0, 1, 0);

-- Combinación 23
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Actualizar e Importar', 'LAI: Leer, actualizar e importar', 0, 1, 1, 0, 1, 0);

-- Combinación 24
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Actualizar e Importar', 'CLAI: Crear, leer, actualizar e importar', 1, 1, 1, 0, 1, 0);
-- Combinación 25
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Eliminar e Importar', 'EI: Eliminar e importar', 0, 0, 0, 1, 1, 0);

-- Combinación 26
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Eliminar e Importar', 'CEI: Crear, eliminar e importar', 1, 0, 0, 1, 1, 0);

-- Combinación 27
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Eliminar e Importar', 'LEI: Leer, eliminar e importar', 0, 1, 0, 1, 1, 0);

-- Combinación 28
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Eliminar e Importar', 'CLEI: Crear, leer, eliminar e importar', 1, 1, 0, 1, 1, 0);

-- Combinación 29
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Actualizar, Eliminar e Importar', 'AEI: Actualizar, eliminar e importar', 0, 0, 1, 1, 1, 0);

-- Combinación 30
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Actualizar, Eliminar e Importar', 'CAEI: Crear, actualizar, eliminar e importar', 1, 0, 1, 1, 1, 0);

-- Combinación 31
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Actualizar, Eliminar e Importar', 'LAEI: Leer, actualizar, eliminar e importar', 0, 1, 1, 1, 1, 0);

-- Combinación 32
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Actualizar, Eliminar e Importar', 'CLAEI: Crear, leer, actualizar, eliminar e importar', 1, 1, 1, 1, 1, 0);

-- Combinación 33
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Solo Exportar', 'SE: Solo exportar', 0, 0, 0, 0, 0, 1);

-- Combinación 34
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear y Exportar', 'CE: Crear y exportar', 1, 0, 0, 0, 0, 1);

-- Combinación 35
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer y Exportar', 'LE: Leer y exportar', 0, 1, 0, 0, 0, 1);

-- Combinación 36
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer y Exportar', 'CLE: Crear, leer y exportar', 1, 1, 0, 0, 0, 1);

-- Combinación 37
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Actualizar y Exportar', 'AE: Actualizar y exportar', 0, 0, 1, 0, 0, 1);

-- Combinación 38
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Actualizar y Exportar', 'CAE: Crear, actualizar y exportar', 1, 0, 1, 0, 0, 1);

-- Combinación 39
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Actualizar y Exportar', 'LAE: Leer, actualizar y exportar', 0, 1, 1, 0, 0, 1);

-- Combinación 40
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Actualizar y Exportar', 'CLAE: Crear, leer, actualizar y exportar', 1, 1, 1, 0, 0, 1);

-- Combinación 41
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Eliminar y Exportar', 'EE: Eliminar y exportar', 0, 0, 0, 1, 0, 1);

-- Combinación 42
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Eliminar y Exportar', 'CEE: Crear, eliminar y exportar', 1, 0, 0, 1, 0, 1);

-- Combinación 43
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Eliminar y Exportar', 'LEE: Leer, eliminar y exportar', 0, 1, 0, 1, 0, 1);

-- Combinación 44
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Eliminar y Exportar', 'CLEE: Crear, leer, eliminar y exportar', 1, 1, 0, 1, 0, 1);

-- Combinación 45
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Actualizar, Eliminar y Exportar', 'AEE: Actualizar, eliminar y exportar', 0, 0, 1, 1, 0, 1);

-- Combinación 46
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Actualizar, Eliminar y Exportar', 'CAEE: Crear, actualizar, eliminar y exportar', 1, 0, 1, 1, 0, 1);

-- Combinación 47
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Actualizar, Eliminar y Exportar', 'LAEE: Leer, actualizar, eliminar y exportar', 0, 1, 1, 1, 0, 1);
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Actualizar, Eliminar y Exportar', 'CLAE: Crear, leer, actualizar, eliminar y exportar', 1, 1, 1, 1, 0, 1);

-- Combinación 49
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Importar y Exportar', 'IE: Importar y exportar', 0, 0, 0, 0, 1, 1);

-- Combinación 50
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Importar y Exportar', 'CIE: Crear, importar y exportar', 1, 0, 0, 0, 1, 1);

-- Combinación 51
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Importar y Exportar', 'LIE: Leer, importar y exportar', 0, 1, 0, 0, 1, 1);

-- Combinación 52
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Importar y Exportar', 'CLIE: Crear, leer, importar y exportar', 1, 1, 0, 0, 1, 1);

-- Combinación 53
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Actualizar, Importar y Exportar', 'AIE: Actualizar, importar y exportar', 0, 0, 1, 0, 1, 1);

-- Combinación 54
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Actualizar, Importar y Exportar', 'CAIE: Crear, actualizar, importar y exportar', 1, 0, 1, 0, 1, 1);

-- Combinación 55
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Actualizar, Importar y Exportar', 'LAIE: Leer, actualizar, importar y exportar', 0, 1, 1, 0, 1, 1);

-- Combinación 56
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Actualizar, Importar y Exportar', 'CLAIE: Crear, leer, actualizar, importar y exportar', 1, 1, 1, 0, 1, 1);

-- Combinación 57
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Eliminar, Importar y Exportar', 'EIE: Eliminar, importar y exportar', 0, 0, 0, 1, 1, 1);

-- Combinación 58
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Eliminar, Importar y Exportar', 'CEIE: Crear, eliminar, importar y exportar', 1, 0, 0, 1, 1, 1);

-- Combinación 59
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Eliminar, Importar y Exportar', 'LEIE: Leer, eliminar, importar y exportar', 0, 1, 0, 1, 1, 1);

-- Combinación 60
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Eliminar, Importar y Exportar', 'CLEIE: Crear, leer, eliminar, importar y exportar', 1, 1, 0, 1, 1, 1);

-- Combinación 61
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Actualizar, Eliminar, Importar y Exportar', 'AEIE: Actualizar, eliminar, importar y exportar', 0, 0, 1, 1, 1, 1);

-- Combinación 62
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Actualizar, Eliminar, Importar y Exportar', 'CAEIE: Crear, actualizar, eliminar, importar y exportar', 1, 0, 1, 1, 1, 1);

-- Combinación 63
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Leer, Actualizar, Eliminar, Importar y Exportar', 'LAEIE: Leer, actualizar, eliminar, importar y exportar', 0, 1, 1, 1, 1, 1);

-- Combinación 64
INSERT INTO [dbo].[Permission]
           ([name], [description], [can_create], [can_read], [can_update], [can_delete], [can_import], [can_export])
     VALUES
           ('Crear, Leer, Actualizar, Eliminar, Importar y Exportar', 'CLAEIE: Crear, leer, actualizar, eliminar, importar y exportar', 1, 1, 1, 1, 1, 1);