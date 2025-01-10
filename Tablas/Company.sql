

CREATE TABLE [dbo].[Company](
	[id_compa] [bigint] IDENTITY(1,1) NOT NULL,
	[compa_name] [nvarchar](255) NOT NULL,
	[compa_tradename] [nvarchar](255) NOT NULL,
	[compa_doctype] [nvarchar](2) NOT NULL,
	[compa_docnum] [nvarchar](255) NOT NULL,
	[compa_address] [nvarchar](255) NOT NULL,
	[compa_city] [nvarchar](255) NOT NULL,
	[compa_state] [nvarchar](255) NOT NULL,
	[compa_country] [nvarchar](255) NOT NULL,
	[compa_industry] [nvarchar](255) NOT NULL,
	[compa_phone] [nvarchar](255) NOT NULL,
	[compa_email] [nvarchar](255) NOT NULL,
	[compa_website] [nvarchar](255) NULL,
	[compa_logo] [nvarchar](max) NULL,
	[compa_active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_compa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Company] ADD  DEFAULT ((1)) FOR [compa_active]
GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [CK_Company_DocType] CHECK  (([compa_doctype]='OT' OR [compa_doctype]='PP' OR [compa_doctype]='CE' OR [compa_doctype]='CC' OR [compa_doctype]='NI'))
GO

ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [CK_Company_DocType]
GO


