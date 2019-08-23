module ISX.Pick.CrawlerHTML.Zone.Common.Apex (
    apex
    ) where


import              Snap.Core
import              Snap.Extras.JSON
import              System.Environment                      (getEnv)
import qualified    Data.Time.Clock                         as  Clock
import qualified    ISX.Pick.CrawlerHTML.Resource.Common    as  R


apex :: Snap ()
apex = do
    t <- liftIO Clock.getCurrentTime
    version <- liftIO $ toText <$> getEnv "VERSION"
    writeJSON $ R.Apex t version