SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Noah J Anderson
-- Create date: 05/08/2015
-- Description:	Look Up All Classes Ordered By Tracks
-- =============================================
CREATE PROCEDURE [dbo].[get_rooms_ordered_by_track]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		
		st.Room,
		tr.Track,
		t.Topic,
		c.Description,
		c.Level

	FROM Schedule AS sc  
	INNER JOIN Location AS l
	 ON sc.LocationId = l.LocationId
	INNER JOIN Street AS st
	 ON l.StreetId= st.StreetId
	INNER JOIN Class AS c 
	 ON sc.ClassId = c.ClassId
	INNER JOIN Topic AS t
	 ON c.TopicId = t.TopicId
	INNER JOIN Track AS tr
	 ON t.TrackId = tr.TrackId
	ORDER BY room asc, tr.trackid asc
END
GO

