{- | Composite of non-transport related modules.

Provides the 'Datum', 'Message', 'Time', 'Bundle' and 'Packet' types
and the coding functions 'encodePacket' and 'decodePacket'.

> import Sound.OSC.Core {- hosc -}
>
> let o = bundle immediately [message "/g_free" [Int32 0]]
> let e = encodeBundle o
> decodePacket e == Packet_Bundle o

-}
module Sound.OSC.Core (module M) where

import Sound.OSC.Coding.Decode.Binary as M
import Sound.OSC.Coding.Encode.Builder as M
import Sound.OSC.Datum as M
import Sound.OSC.Packet as M
import Sound.OSC.Time as M
import Sound.OSC.Wait as M
