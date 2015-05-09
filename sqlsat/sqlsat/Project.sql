SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Noah J Anderson
-- Create date: 05/08/2015
-- Description:	Look Up All Classes Ordered By Tracks
-- =============================================
CREATE PROCEDURE get_classes_ordered_by_tracks 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		tr.Track,
		t.Topic,
		c.Description,
		a.LastName,
		a.FirstName

	FROM class AS c 
	INNER JOIN Topic AS t
	 ON c.TopicId = t.TopicId
	INNER JOIN Track AS tr
	 ON t.TrackId = tr.TrackId
	INNER JOIN Actor AS a
	 ON c.ActorId = a.ActorId
	ORDER BY t.TrackId
END
GO
