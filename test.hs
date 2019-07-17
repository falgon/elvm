import Data.Array.IO
import Data.IORef
import Data.Char
import Data.Bits
import System.Exit
import Control.Exception

main :: IO ()
main = do
 aRef <- newIORef 0 :: IO (IORef Int)
 bRef <- newIORef 0 :: IO (IORef Int)
 cRef <- newIORef 0 :: IO (IORef Int)
 dRef <- newIORef 0 :: IO (IORef Int)
 bpRef <- newIORef 0 :: IO (IORef Int)
 spRef <- newIORef 0 :: IO (IORef Int)
 pcRef <- newIORef 0 :: IO (IORef Int)
 mem <- newArray (0, 16777215) 0 :: IO (IOArray Int Int)
 let init0 :: IO ()
     init0 = do
      writeArray mem 0 8388608
      writeArray mem 1 4194304
      writeArray mem 2 2097152
      writeArray mem 3 1048576
      writeArray mem 4 524288
      writeArray mem 5 262144
      writeArray mem 6 131072
      writeArray mem 7 65536
      writeArray mem 8 32768
      writeArray mem 9 16384
      writeArray mem 10 8192
      writeArray mem 11 4096
      writeArray mem 12 2048
      writeArray mem 13 1024
      writeArray mem 14 512
      writeArray mem 15 256
      writeArray mem 16 128
      writeArray mem 17 64
      writeArray mem 18 32
      writeArray mem 19 16
      writeArray mem 20 8
      writeArray mem 21 4
      writeArray mem 22 2
      writeArray mem 23 1
      writeArray mem 24 110
      writeArray mem 25 111
      writeArray mem 26 32
      writeArray mem 27 109
      writeArray mem 28 101
      writeArray mem 29 109
      writeArray mem 30 111
      writeArray mem 31 114
      writeArray mem 32 121
      writeArray mem 33 33
      writeArray mem 34 10
      writeArray mem 37 1
      writeArray mem 38 2
      writeArray mem 39 3
      writeArray mem 40 4
      writeArray mem 41 5
      writeArray mem 42 6
      writeArray mem 43 7
      writeArray mem 44 8
      writeArray mem 45 9
      writeArray mem 46 10
      writeArray mem 47 11
      writeArray mem 48 12
      writeArray mem 49 13
      writeArray mem 50 14
      writeArray mem 51 15
      writeArray mem 52 16
      writeArray mem 53 17
      writeArray mem 54 18
      writeArray mem 55 19
      writeArray mem 56 20
      writeArray mem 57 21
      writeArray mem 58 22
      writeArray mem 59 23
      writeArray mem 60 24
      writeArray mem 61 25
      writeArray mem 62 26
      writeArray mem 63 27
      writeArray mem 64 28
      writeArray mem 65 29
      writeArray mem 66 30
      writeArray mem 67 31
      writeArray mem 68 32
      writeArray mem 69 33
      writeArray mem 70 34
      writeArray mem 71 35
      writeArray mem 72 36
      writeArray mem 73 37
      writeArray mem 74 38
      writeArray mem 75 39
      writeArray mem 76 40
      writeArray mem 77 41
      writeArray mem 78 42
      writeArray mem 79 43
      writeArray mem 80 44
      writeArray mem 81 45
      writeArray mem 82 46
      writeArray mem 83 47
      writeArray mem 84 48
      writeArray mem 85 49
      writeArray mem 86 50
      writeArray mem 87 51
      writeArray mem 88 52
      writeArray mem 89 53
      writeArray mem 90 54
      writeArray mem 91 55
      writeArray mem 92 56
      writeArray mem 93 57
      writeArray mem 94 58
      writeArray mem 95 59
      writeArray mem 96 60
      writeArray mem 97 61
      writeArray mem 98 62
      writeArray mem 99 63
      writeArray mem 100 64
      writeArray mem 101 97
      writeArray mem 102 98
      writeArray mem 103 99
      writeArray mem 104 100
      writeArray mem 105 101
      writeArray mem 106 102
      writeArray mem 107 103
      writeArray mem 108 104
      writeArray mem 109 105
      writeArray mem 110 106
      writeArray mem 111 107
      writeArray mem 112 108
      writeArray mem 113 109
      writeArray mem 114 110
      writeArray mem 115 111
      writeArray mem 116 112
      writeArray mem 117 113
      writeArray mem 118 114
      writeArray mem 119 115
      writeArray mem 120 116
      writeArray mem 121 117
      writeArray mem 122 118
      writeArray mem 123 119
      writeArray mem 124 120
      writeArray mem 125 121
      writeArray mem 126 122
      writeArray mem 127 91
      writeArray mem 128 92
      writeArray mem 129 93
      writeArray mem 130 94
      writeArray mem 131 95
      writeArray mem 132 96
      writeArray mem 133 97
      writeArray mem 134 98
      writeArray mem 135 99
      writeArray mem 136 100
      writeArray mem 137 101
      writeArray mem 138 102
      writeArray mem 139 103
      writeArray mem 140 104
      writeArray mem 141 105
      writeArray mem 142 106
      writeArray mem 143 107
      writeArray mem 144 108
      writeArray mem 145 109
      writeArray mem 146 110
      writeArray mem 147 111
      writeArray mem 148 112
      writeArray mem 149 113
      writeArray mem 150 114
      writeArray mem 151 115
      writeArray mem 152 116
      writeArray mem 153 117
      writeArray mem 154 118
      writeArray mem 155 119
      writeArray mem 156 120
      writeArray mem 157 121
      writeArray mem 158 122
      writeArray mem 159 123
      writeArray mem 160 124
      writeArray mem 161 125
      writeArray mem 162 126
      writeArray mem 163 127
      writeArray mem 164 16777088
      writeArray mem 165 16777089
      writeArray mem 166 16777090
      writeArray mem 167 16777091
      writeArray mem 168 16777092
      writeArray mem 169 16777093
      writeArray mem 170 16777094
      writeArray mem 171 16777095
      writeArray mem 172 16777096
      writeArray mem 173 16777097
      writeArray mem 174 16777098
      writeArray mem 175 16777099
      writeArray mem 176 16777100
      writeArray mem 177 16777101
      writeArray mem 178 16777102
      writeArray mem 179 16777103
      writeArray mem 180 16777104
      writeArray mem 181 16777105
      writeArray mem 182 16777106
      writeArray mem 183 16777107
      writeArray mem 184 16777108
      writeArray mem 185 16777109
      writeArray mem 186 16777110
      writeArray mem 187 16777111
      writeArray mem 188 16777112
      writeArray mem 189 16777113
      writeArray mem 190 16777114
      writeArray mem 191 16777115
      writeArray mem 192 16777116
      writeArray mem 193 16777117
      writeArray mem 194 16777118
      writeArray mem 195 16777119
      writeArray mem 196 16777120
      writeArray mem 197 16777121
      writeArray mem 198 16777122
      writeArray mem 199 16777123
      writeArray mem 200 16777124
      writeArray mem 201 16777125
      writeArray mem 202 16777126
      writeArray mem 203 16777127
      writeArray mem 204 16777128
      writeArray mem 205 16777129
      writeArray mem 206 16777130
      writeArray mem 207 16777131
      writeArray mem 208 16777132
      writeArray mem 209 16777133
      writeArray mem 210 16777134
      writeArray mem 211 16777135
      writeArray mem 212 16777136
      writeArray mem 213 16777137
      writeArray mem 214 16777138
      writeArray mem 215 16777139
      writeArray mem 216 16777140
      writeArray mem 217 16777141
      writeArray mem 218 16777142
      writeArray mem 219 16777143
      writeArray mem 220 16777144
      writeArray mem 221 16777145
      writeArray mem 222 16777146
      writeArray mem 223 16777147
      writeArray mem 224 16777148
      writeArray mem 225 16777149
      writeArray mem 226 16777150
      writeArray mem 227 16777151
      writeArray mem 228 16777152
      writeArray mem 229 16777153
      writeArray mem 230 16777154
      writeArray mem 231 16777155
      writeArray mem 232 16777156
      writeArray mem 233 16777157
      writeArray mem 234 16777158
      writeArray mem 235 16777159
      writeArray mem 236 16777160
      writeArray mem 237 16777161
      writeArray mem 238 16777162
      writeArray mem 239 16777163
      writeArray mem 240 16777164
      writeArray mem 241 16777165
      writeArray mem 242 16777166
      writeArray mem 243 16777167
      writeArray mem 244 16777168
      writeArray mem 245 16777169
      writeArray mem 246 16777170
      writeArray mem 247 16777171
      writeArray mem 248 16777172
      writeArray mem 249 16777173
      writeArray mem 250 16777174
      writeArray mem 251 16777175
      writeArray mem 252 16777176
      writeArray mem 253 16777177
      writeArray mem 254 16777178
      writeArray mem 255 16777179
      writeArray mem 256 16777180
      writeArray mem 257 16777181
      writeArray mem 258 16777182
      writeArray mem 259 16777183
      writeArray mem 260 16777184
      writeArray mem 261 16777185
      writeArray mem 262 16777186
      writeArray mem 263 16777187
      writeArray mem 264 16777188
      writeArray mem 265 16777189
      writeArray mem 266 16777190
      writeArray mem 267 16777191
      writeArray mem 268 16777192
      writeArray mem 269 16777193
      writeArray mem 270 16777194
      writeArray mem 271 16777195
      writeArray mem 272 16777196
      writeArray mem 273 16777197
      writeArray mem 274 16777198
      writeArray mem 275 16777199
      writeArray mem 276 16777200
      writeArray mem 277 16777201
      writeArray mem 278 16777202
      writeArray mem 279 16777203
      writeArray mem 280 16777204
      writeArray mem 281 16777205
      writeArray mem 282 16777206
      writeArray mem 283 16777207
      writeArray mem 284 16777208
      writeArray mem 285 16777209
      writeArray mem 286 16777210
      writeArray mem 287 16777211
      writeArray mem 288 16777212
      writeArray mem 289 16777213
      writeArray mem 290 16777214
      writeArray mem 291 16777215
      writeArray mem 292 32
      writeArray mem 293 105
      writeArray mem 294 110
      writeArray mem 295 32
      writeArray mem 297 58
      writeArray mem 298 32
      writeArray mem 299 117
      writeArray mem 300 110
      writeArray mem 301 107
      writeArray mem 302 110
      writeArray mem 303 111
      writeArray mem 304 119
      writeArray mem 305 110
      writeArray mem 306 32
      writeArray mem 307 102
      writeArray mem 308 111
      writeArray mem 309 114
      writeArray mem 310 109
      writeArray mem 311 97
      writeArray mem 312 116
      writeArray mem 313 33
      writeArray mem 314 10
      writeArray mem 316 1
      writeArray mem 317 1
      writeArray mem 318 1
      writeArray mem 319 16777215
      writeArray mem 321 104
      writeArray mem 322 101
      writeArray mem 323 108
      writeArray mem 324 108
      writeArray mem 325 111
      writeArray mem 327 328
      return ()

 let func0 :: IO ()
     func0 = do
      let whileLoop :: IO ()
          whileLoop = do
           pc <- readIORef pcRef
           if 0 <= pc && pc < 128
            then do
             case pc of
              -1 -> return () -- dummy

              0 -> do
               if (True) then (writeIORef pcRef (587 - 1)) else return ()

              1 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 52) .&. 16777215)
               writeIORef aRef 1;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777168) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              2 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777192) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777166) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777166) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (4 - 1)) else return ()

              3 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777166) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              4 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (6 - 1)) else return ()

              5 -> do
               if (True) then (writeIORef pcRef (8 - 1)) else return ()

              6 -> do
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777168) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777168) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777168) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777166) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              7 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (2 - 1)) else return ()

              8 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777165) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              9 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777192) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777164) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777164) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (11 - 1)) else return ()

              10 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777165) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777168) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777165) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777164) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              11 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (13 - 1)) else return ()

              12 -> do
               if (True) then (writeIORef pcRef (14 - 1)) else return ()

              13 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777167) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (9 - 1)) else return ()

              14 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777165) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              15 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 53) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (17 - 1)) else return ()

              16 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              17 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (19 - 1)) else return ()

              18 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              19 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (21 - 1)) else return ()

              20 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              21 -> do
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              22 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777189) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777165) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777164) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777164) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (24 - 1)) else return ()

              23 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777164) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              24 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (26 - 1)) else return ()

              25 -> do
               if (True) then (writeIORef pcRef (28 - 1)) else return ()

              26 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777164) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              27 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (22 - 1)) else return ()

              28 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777163) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              29 -> do
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777165) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (31 - 1)) else return ()

              30 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777163) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777189) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777163) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777165) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              31 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (33 - 1)) else return ()

              32 -> do
               if (True) then (writeIORef pcRef (34 - 1)) else return ()

              33 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (29 - 1)) else return ()

              34 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777163) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              35 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              36 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (38 - 1)) else return ()

              37 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              38 -> do
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777214) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 39;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (1 - 1)) else return ()

              39 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 3) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              40 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              41 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777214) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 42;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (1 - 1)) else return ()

              42 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 3) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              43 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              44 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 5) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              45 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 24;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (47 - 1)) else return ()

              46 -> do
               if (True) then (writeIORef pcRef (48 - 1)) else return ()

              47 -> do
               if (True) then (writeIORef pcRef (59 - 1)) else return ()

              48 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (50 - 1)) else return ()

              49 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (51 - 1)) else return ()

              50 -> do
               writeIORef aRef 0;

              51 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (53 - 1)) else return ()

              52 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (54 - 1)) else return ()

              53 -> do
               writeIORef aRef 0;

              54 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (56 - 1)) else return ()

              55 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              56 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (58 - 1)) else return ()

              57 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              58 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (45 - 1)) else return ()

              59 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              60 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              61 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 5) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              62 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 24;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (64 - 1)) else return ()

              63 -> do
               if (True) then (writeIORef pcRef (65 - 1)) else return ()

              64 -> do
               if (True) then (writeIORef pcRef (76 - 1)) else return ()

              65 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (67 - 1)) else return ()

              66 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (68 - 1)) else return ()

              67 -> do
               writeIORef aRef 0;

              68 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (70 - 1)) else return ()

              69 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (71 - 1)) else return ()

              70 -> do
               writeIORef aRef 0;

              71 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (73 - 1)) else return ()

              72 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              73 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (75 - 1)) else return ()

              74 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              75 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (62 - 1)) else return ()

              76 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              77 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              78 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 5) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              79 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 24;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (81 - 1)) else return ()

              80 -> do
               if (True) then (writeIORef pcRef (82 - 1)) else return ()

              81 -> do
               if (True) then (writeIORef pcRef (91 - 1)) else return ()

              82 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (84 - 1)) else return ()

              83 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (85 - 1)) else return ()

              84 -> do
               writeIORef aRef 0;

              85 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (87 - 1)) else return ()

              86 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (88 - 1)) else return ()

              87 -> do
               writeIORef aRef 0;

              88 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (90 - 1)) else return ()

              89 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              90 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (79 - 1)) else return ()

              91 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              92 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              93 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 4) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              94 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 24;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (96 - 1)) else return ()

              95 -> do
               if (True) then (writeIORef pcRef (97 - 1)) else return ()

              96 -> do
               if (True) then (writeIORef pcRef (103 - 1)) else return ()

              97 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (99 - 1)) else return ()

              98 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (100 - 1)) else return ()

              99 -> do
               writeIORef aRef 0;

              100 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef (if a == 0 then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (102 - 1)) else return ()

              101 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              102 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (94 - 1)) else return ()

              103 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              104 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              105 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 4) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              106 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 24;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (108 - 1)) else return ()

              107 -> do
               if (True) then (writeIORef pcRef (109 - 1)) else return ()

              108 -> do
               if (True) then (writeIORef pcRef (115 - 1)) else return ()

              109 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (111 - 1)) else return ()

              110 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (112 - 1)) else return ()

              111 -> do
               writeIORef aRef 0;

              112 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (114 - 1)) else return ()

              113 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              114 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (106 - 1)) else return ()

              115 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              116 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              117 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 4) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              118 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 24;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (120 - 1)) else return ()

              119 -> do
               if (True) then (writeIORef pcRef (121 - 1)) else return ()

              120 -> do
               if (True) then (writeIORef pcRef (127 - 1)) else return ()

              121 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (123 - 1)) else return ()

              122 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               if (True) then (writeIORef pcRef (124 - 1)) else return ()

              123 -> do
               writeIORef aRef 0;

              124 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (126 - 1)) else return ()

              125 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              126 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (118 - 1)) else return ()

              127 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()
             modifyIORef pcRef (+1)
             whileLoop
            else return ()
      whileLoop

 let func1 :: IO ()
     func1 = do
      let whileLoop :: IO ()
          whileLoop = do
           pc <- readIORef pcRef
           if 128 <= pc && pc < 256
            then do
             case pc of
              -1 -> return () -- dummy

              128 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              129 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;

              130 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (132 - 1)) else return ()

              131 -> do
               if (True) then (writeIORef pcRef (133 - 1)) else return ()

              132 -> do
               if (True) then (writeIORef pcRef (135 - 1)) else return ()

              133 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               putChar(chr a)
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              134 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (130 - 1)) else return ()

              135 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              136 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              137 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 138;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (41 - 1)) else return ()

              138 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 48;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 139;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (36 - 1)) else return ()

              139 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (141 - 1)) else return ()

              140 -> do
               if (True) then (writeIORef pcRef (137 - 1)) else return ()

              141 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              142 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              143 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 32) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777184) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 32;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 144;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (136 - 1)) else return ()

              144 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 145;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              145 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              146 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (148 - 1)) else return ()

              147 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 1;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              148 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 16;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 149;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (41 - 1)) else return ()

              149 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (151 - 1)) else return ()

              150 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 48;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               if (True) then (writeIORef pcRef (152 - 1)) else return ()

              151 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 97;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)

              152 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 16;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 153;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (36 - 1)) else return ()

              153 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (155 - 1)) else return ()

              154 -> do
               if (True) then (writeIORef pcRef (148 - 1)) else return ()

              155 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (157 - 1)) else return ()

              156 -> do
               writeIORef aRef 45;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              157 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              158 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              159 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 12;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (161 - 1)) else return ()

              160 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              161 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (163 - 1)) else return ()

              162 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 13;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              163 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (165 - 1)) else return ()

              164 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 9;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              165 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (167 - 1)) else return ()

              166 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 11;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              167 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (169 - 1)) else return ()

              168 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 32;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              169 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              170 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              171 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 48;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (173 - 1)) else return ()

              172 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 57;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              173 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              174 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              175 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 176;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (171 - 1)) else return ()

              176 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (180 - 1)) else return ()

              177 -> do
               writeIORef aRef 97;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (179 - 1)) else return ()

              178 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 102;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              179 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              180 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (184 - 1)) else return ()

              181 -> do
               writeIORef aRef 65;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (183 - 1)) else return ()

              182 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 70;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              183 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              184 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              185 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              186 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 65;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (188 - 1)) else return ()

              187 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 90;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              188 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              189 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              190 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 97;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (192 - 1)) else return ()

              191 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 122;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              192 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (196 - 1)) else return ()

              193 -> do
               writeIORef aRef 65;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (195 - 1)) else return ()

              194 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 90;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              195 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              196 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              197 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              198 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 199;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (190 - 1)) else return ()

              199 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (202 - 1)) else return ()

              200 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 201;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (171 - 1)) else return ()

              201 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              202 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              203 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              204 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 205;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (159 - 1)) else return ()

              205 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (209 - 1)) else return ()

              206 -> do
               writeIORef aRef 32;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (208 - 1)) else return ()

              207 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 127;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              208 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              209 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              210 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              211 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 1;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               exitSuccess
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              212 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef bRef 327;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef bRef 327;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               writeIORef bRef 327;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef bRef 327;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (215 - 1)) else return ()

              213 -> do
               writeIORef aRef 24;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 214;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              214 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 1;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               exitSuccess
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              215 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              216 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              217 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 218;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (15 - 1)) else return ()

              218 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 219;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (212 - 1)) else return ()

              219 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              220 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              221 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              222 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 7) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (224 - 1)) else return ()

              223 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              224 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (226 - 1)) else return ()

              225 -> do
               writeIORef aRef 36;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              226 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (230 - 1)) else return ()

              227 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (229 - 1)) else return ()

              228 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              229 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              230 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              231 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 232;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (159 - 1)) else return ()

              232 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (234 - 1)) else return ()

              233 -> do
               if (True) then (writeIORef pcRef (231 - 1)) else return ()

              234 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 45;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (236 - 1)) else return ()

              235 -> do
               writeIORef aRef 1;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (238 - 1)) else return ()

              236 -> do
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 43;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (238 - 1)) else return ()

              237 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              238 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (240 - 1)) else return ()

              239 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 16;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              240 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (242 - 1)) else return ()

              241 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 48;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              242 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (246 - 1)) else return ()

              243 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 120;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (245 - 1)) else return ()

              244 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 88;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              245 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              246 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (248 - 1)) else return ()

              247 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 2;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 16;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              248 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (253 - 1)) else return ()

              249 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 48;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (251 - 1)) else return ()

              250 -> do
               writeIORef aRef 8;
               if (True) then (writeIORef pcRef (252 - 1)) else return ()

              251 -> do
               writeIORef aRef 10;

              252 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              253 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (257 - 1)) else return ()

              254 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777209) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (256 - 1)) else return ()

              255 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777209) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777209) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
             modifyIORef pcRef (+1)
             whileLoop
            else return ()
      whileLoop

 let func2 :: IO ()
     func2 = do
      let whileLoop :: IO ()
          whileLoop = do
           pc <- readIORef pcRef
           if 256 <= pc && pc < 384
            then do
             case pc of
              -1 -> return () -- dummy

              256 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777209) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777209) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              257 -> do
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777210) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              258 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 259;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (171 - 1)) else return ()

              259 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (261 - 1)) else return ()

              260 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 48;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (269 - 1)) else return ()

              261 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 262;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (190 - 1)) else return ()

              262 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (268 - 1)) else return ()

              263 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 264;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (186 - 1)) else return ()

              264 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (266 - 1)) else return ()

              265 -> do
               writeIORef aRef 65;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               if (True) then (writeIORef pcRef (267 - 1)) else return ()

              266 -> do
               writeIORef aRef 97;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)

              267 -> do
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (269 - 1)) else return ()

              268 -> do
               if (True) then (writeIORef pcRef (279 - 1)) else return ()

              269 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (271 - 1)) else return ()

              270 -> do
               if (True) then (writeIORef pcRef (279 - 1)) else return ()

              271 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777210) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (273 - 1)) else return ()

              272 -> do
               if (True) then (writeIORef pcRef (278 - 1)) else return ()

              273 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (276 - 1)) else return ()

              274 -> do
               writeIORef aRef 1;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777210) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 275;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (15 - 1)) else return ()

              275 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (278 - 1)) else return ()

              276 -> do
               writeIORef aRef 1;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777210) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 277;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (15 - 1)) else return ()

              277 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              278 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (258 - 1)) else return ()

              279 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (284 - 1)) else return ()

              280 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777210) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (282 - 1)) else return ()

              281 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               if (True) then (writeIORef pcRef (283 - 1)) else return ()

              282 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a

              283 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              284 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              285 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              286 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 287;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (222 - 1)) else return ()

              287 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 3) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              288 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              289 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 290;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (222 - 1)) else return ()

              290 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 3) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              291 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              292 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 293;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (222 - 1)) else return ()

              293 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 3) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              294 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              295 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              296 -> do
               writeIORef aRef 48;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (298 - 1)) else return ()

              297 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 57;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              298 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (302 - 1)) else return ()

              299 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 3;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 300;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (105 - 1)) else return ()

              300 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 301;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (105 - 1)) else return ()

              301 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 48;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (303 - 1)) else return ()

              302 -> do
               if (True) then (writeIORef pcRef (304 - 1)) else return ()

              303 -> do
               if (True) then (writeIORef pcRef (296 - 1)) else return ()

              304 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              305 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              306 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              307 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              308 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 6) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (310 - 1)) else return ()

              309 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              310 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 2;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 311;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (36 - 1)) else return ()

              311 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 312;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (15 - 1)) else return ()

              312 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 313;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (15 - 1)) else return ()

              313 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              314 -> do
               writeIORef aRef 32768;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               writeIORef aRef 315;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               c <- readIORef cRef
               if (True) then (writeIORef pcRef (c - 1)) else return ()

              315 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (317 - 1)) else return ()

              316 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (318 - 1)) else return ()

              317 -> do
               if (True) then (writeIORef pcRef (319 - 1)) else return ()

              318 -> do
               if (True) then (writeIORef pcRef (314 - 1)) else return ()

              319 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               writeIORef aRef 320;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               c <- readIORef cRef
               if (True) then (writeIORef pcRef (c - 1)) else return ()

              320 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 32768;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (322 - 1)) else return ()

              321 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (323 - 1)) else return ()

              322 -> do
               if (True) then (writeIORef pcRef (324 - 1)) else return ()

              323 -> do
               if (True) then (writeIORef pcRef (319 - 1)) else return ()

              324 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (326 - 1)) else return ()

              325 -> do
               if (True) then (writeIORef pcRef (338 - 1)) else return ()

              326 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              327 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (329 - 1)) else return ()

              328 -> do
               if (True) then (writeIORef pcRef (330 - 1)) else return ()

              329 -> do
               if (True) then (writeIORef pcRef (332 - 1)) else return ()

              330 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777210) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777210) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              331 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777211) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (327 - 1)) else return ()

              332 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (334 - 1)) else return ()

              333 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (336 - 1)) else return ()

              334 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (336 - 1)) else return ()

              335 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              336 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              337 -> do
               if (True) then (writeIORef pcRef (314 - 1)) else return ()

              338 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 339;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (36 - 1)) else return ()

              339 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 340;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (308 - 1)) else return ()

              340 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 4) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 341;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (15 - 1)) else return ()

              341 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 342;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (36 - 1)) else return ()

              342 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 343;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (308 - 1)) else return ()

              343 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 4) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              344 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              345 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (347 - 1)) else return ()

              346 -> do
               if (True) then (writeIORef pcRef (348 - 1)) else return ()

              347 -> do
               if (True) then (writeIORef pcRef (350 - 1)) else return ()

              348 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              349 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (345 - 1)) else return ()

              350 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              351 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              352 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              353 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (355 - 1)) else return ()

              354 -> do
               if (True) then (writeIORef pcRef (356 - 1)) else return ()

              355 -> do
               if (True) then (writeIORef pcRef (358 - 1)) else return ()

              356 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              357 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (353 - 1)) else return ()

              358 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              359 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              360 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              361 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (363 - 1)) else return ()

              362 -> do
               if (True) then (writeIORef pcRef (364 - 1)) else return ()

              363 -> do
               if (True) then (writeIORef pcRef (365 - 1)) else return ()

              364 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (361 - 1)) else return ()

              365 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              366 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              367 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              368 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (370 - 1)) else return ()

              369 -> do
               if (True) then (writeIORef pcRef (371 - 1)) else return ()

              370 -> do
               if (True) then (writeIORef pcRef (372 - 1)) else return ()

              371 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (368 - 1)) else return ()

              372 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (374 - 1)) else return ()

              373 -> do
               if (True) then (writeIORef pcRef (375 - 1)) else return ()

              374 -> do
               if (True) then (writeIORef pcRef (377 - 1)) else return ()

              375 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              376 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (372 - 1)) else return ()

              377 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              378 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              379 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              380 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (382 - 1)) else return ()

              381 -> do
               if (True) then (writeIORef pcRef (383 - 1)) else return ()

              382 -> do
               if (True) then (writeIORef pcRef (385 - 1)) else return ()

              383 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
             modifyIORef pcRef (+1)
             whileLoop
            else return ()
      whileLoop

 let func3 :: IO ()
     func3 = do
      let whileLoop :: IO ()
          whileLoop = do
           pc <- readIORef pcRef
           if 384 <= pc && pc < 512
            then do
             case pc of
              -1 -> return () -- dummy

              384 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (380 - 1)) else return ()

              385 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              386 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              387 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;

              388 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (390 - 1)) else return ()

              389 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              390 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (392 - 1)) else return ()

              391 -> do
               if (True) then (writeIORef pcRef (393 - 1)) else return ()

              392 -> do
               if (True) then (writeIORef pcRef (398 - 1)) else return ()

              393 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (395 - 1)) else return ()

              394 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              395 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (397 - 1)) else return ()

              396 -> do
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              397 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (388 - 1)) else return ()

              398 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              399 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              400 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;

              401 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (403 - 1)) else return ()

              402 -> do
               if (True) then (writeIORef pcRef (404 - 1)) else return ()

              403 -> do
               if (True) then (writeIORef pcRef (407 - 1)) else return ()

              404 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (406 - 1)) else return ()

              405 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              406 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (401 - 1)) else return ()

              407 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              408 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              409 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 410;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (360 - 1)) else return ()

              410 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 411;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (212 - 1)) else return ()

              411 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 412;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (379 - 1)) else return ()

              412 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              413 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              414 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 4) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               writeIORef bRef 0;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (416 - 1)) else return ()

              415 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              416 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (418 - 1)) else return ()

              417 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              418 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              419 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (421 - 1)) else return ()

              420 -> do
               if (True) then (writeIORef pcRef (422 - 1)) else return ()

              421 -> do
               if (True) then (writeIORef pcRef (425 - 1)) else return ()

              422 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (424 - 1)) else return ()

              423 -> do
               if (True) then (writeIORef pcRef (418 - 1)) else return ()

              424 -> do
               if (True) then (writeIORef pcRef (419 - 1)) else return ()

              425 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (427 - 1)) else return ()

              426 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              427 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              428 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              429 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (434 - 1)) else return ()

              430 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (432 - 1)) else return ()

              431 -> do
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (433 - 1)) else return ()

              432 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              433 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777212) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              434 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (436 - 1)) else return ()

              435 -> do
               if (True) then (writeIORef pcRef (429 - 1)) else return ()

              436 -> do
               if (True) then (writeIORef pcRef (428 - 1)) else return ()

              437 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              438 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 3) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 36;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              439 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (443 - 1)) else return ()

              440 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (442 - 1)) else return ()

              441 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              442 -> do
               if (True) then (writeIORef pcRef (444 - 1)) else return ()

              443 -> do
               if (True) then (writeIORef pcRef (445 - 1)) else return ()

              444 -> do
               if (True) then (writeIORef pcRef (439 - 1)) else return ()

              445 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              446 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              447 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 3) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (455 - 1)) else return ()

              448 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 36;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              449 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (451 - 1)) else return ()

              450 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              451 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (453 - 1)) else return ()

              452 -> do
               if (True) then (writeIORef pcRef (455 - 1)) else return ()

              453 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (455 - 1)) else return ()

              454 -> do
               if (True) then (writeIORef pcRef (449 - 1)) else return ()

              455 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              456 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              457 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 3) .&. 16777215)

              458 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (467 - 1)) else return ()

              459 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              460 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (462 - 1)) else return ()

              461 -> do
               if (True) then (writeIORef pcRef (463 - 1)) else return ()

              462 -> do
               if (True) then (writeIORef pcRef (466 - 1)) else return ()

              463 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (465 - 1)) else return ()

              464 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              465 -> do
               if (True) then (writeIORef pcRef (460 - 1)) else return ()

              466 -> do
               if (True) then (writeIORef pcRef (468 - 1)) else return ()

              467 -> do
               if (True) then (writeIORef pcRef (469 - 1)) else return ()

              468 -> do
               if (True) then (writeIORef pcRef (458 - 1)) else return ()

              469 -> do
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              470 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              471 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 472;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              472 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 10;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               putChar(chr a)
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              473 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 38) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              474 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (476 - 1)) else return ()

              475 -> do
               if (True) then (writeIORef pcRef (477 - 1)) else return ()

              476 -> do
               if (True) then (writeIORef pcRef (519 - 1)) else return ()

              477 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 37;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a /= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (483 - 1)) else return ()

              478 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef (if a == 0 then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (482 - 1)) else return ()

              479 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (481 - 1)) else return ()

              480 -> do
               writeIORef aRef 1;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (482 - 1)) else return ()

              481 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              482 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (518 - 1)) else return ()

              483 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 108;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (485 - 1)) else return ()

              484 -> do
               if (True) then (writeIORef pcRef (498 - 1)) else return ()

              485 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 100;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (487 - 1)) else return ()

              486 -> do
               if (True) then (writeIORef pcRef (499 - 1)) else return ()

              487 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 117;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (489 - 1)) else return ()

              488 -> do
               if (True) then (writeIORef pcRef (499 - 1)) else return ()

              489 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 120;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (491 - 1)) else return ()

              490 -> do
               if (True) then (writeIORef pcRef (501 - 1)) else return ()

              491 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 115;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (493 - 1)) else return ()

              492 -> do
               if (True) then (writeIORef pcRef (503 - 1)) else return ()

              493 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 99;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (495 - 1)) else return ()

              494 -> do
               if (True) then (writeIORef pcRef (504 - 1)) else return ()

              495 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777179) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 37;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (497 - 1)) else return ()

              496 -> do
               if (True) then (writeIORef pcRef (505 - 1)) else return ()

              497 -> do
               if (True) then (writeIORef pcRef (506 - 1)) else return ()

              498 -> do
               if (True) then (writeIORef pcRef (483 - 1)) else return ()

              499 -> do
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 32;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 500;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (136 - 1)) else return ()

              500 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777180) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (511 - 1)) else return ()

              501 -> do
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 32;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 502;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (146 - 1)) else return ()

              502 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777180) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (511 - 1)) else return ()

              503 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777180) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (511 - 1)) else return ()

              504 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 5) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777180) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (511 - 1)) else return ()

              505 -> do
               writeIORef aRef 37;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16777181) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777180) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               if (True) then (writeIORef pcRef (511 - 1)) else return ()

              506 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 507;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (143 - 1)) else return ()

              507 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 292;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 508;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              508 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 509;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              509 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 297;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 510;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              510 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               writeIORef aRef 1;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               exitSuccess
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              511 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777180) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 512;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (360 - 1)) else return ()
             modifyIORef pcRef (+1)
             whileLoop
            else return ()
      whileLoop

 let func4 :: IO ()
     func4 = do
      let whileLoop :: IO ()
          whileLoop = do
           pc <- readIORef pcRef
           if 512 <= pc && pc < 640
            then do
             case pc of
              -1 -> return () -- dummy

              512 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777178) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef aRef (if a == 0 then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (517 - 1)) else return ()

              513 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777178) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a <= b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (515 - 1)) else return ()

              514 -> do
               writeIORef aRef 1;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (517 - 1)) else return ()

              515 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777180) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 516;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (379 - 1)) else return ()

              516 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)

              517 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777178) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              518 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (474 - 1)) else return ()

              519 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              520 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              521 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 256;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 522;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (473 - 1)) else return ()

              522 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 4) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              523 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              524 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 4) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 525;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (473 - 1)) else return ()

              525 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 4) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              526 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              527 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 3) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 528;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (521 - 1)) else return ()

              528 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 3) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              529 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              530 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 257) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 256;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16776960) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 531;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (473 - 1)) else return ()

              531 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 4) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16776959) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16776960) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16776959) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 16776960) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 532;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              532 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16776959) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              533 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              534 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 535;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (530 - 1)) else return ()

              535 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              536 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              537 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef aRef bp;
               a <- readIORef aRef
               writeIORef aRef ((a + 3) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 538;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (530 - 1)) else return ()

              538 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              539 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 540;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (530 - 1)) else return ()

              540 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              541 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              542 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              543 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              544 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef bRef 316;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              545 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              546 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 0;
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              547 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              548 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 3) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 4) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 549;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (15 - 1)) else return ()

              549 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 2) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               writeIORef aRef 0;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              550 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (552 - 1)) else return ()

              551 -> do
               if (True) then (writeIORef pcRef (553 - 1)) else return ()

              552 -> do
               if (True) then (writeIORef pcRef (555 - 1)) else return ()

              553 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               putChar(chr a)
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)

              554 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777213) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (550 - 1)) else return ()

              555 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              556 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              557 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 558;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (129 - 1)) else return ()

              558 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              559 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 2) .&. 16777215)
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               writeIORef aRef 0;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a

              560 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a < b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (562 - 1)) else return ()

              561 -> do
               if (True) then (writeIORef pcRef (563 - 1)) else return ()

              562 -> do
               if (True) then (writeIORef pcRef (570 - 1)) else return ()

              563 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef bRef sp;
               catch (do
                    a <- fmap ord getChar
                    writeIORef aRef a
                 )
                 (\(SomeException e) -> writeIORef aRef 0)
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (565 - 1)) else return ()

              564 -> do
               writeIORef aRef 16777215;

              565 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 10;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               writeIORef bRef 1;
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (567 - 1)) else return ()

              566 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777214) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               writeIORef bRef a;
               b <- readIORef bRef
               writeIORef bRef (if b /= 0 then 1 else 0)

              567 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (569 - 1)) else return ()

              568 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              569 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               a <- readIORef aRef
               writeIORef aRef ((a + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               if (True) then (writeIORef pcRef (560 - 1)) else return ()

              570 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               b <- readIORef bRef
               d <- readIORef dRef
               writeArray mem d b
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a + b) .&. 16777215)
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               a <- readIORef aRef
               writeIORef cRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               c <- readIORef cRef
               writeIORef aRef c;
               b <- readIORef bRef
               a <- readIORef aRef
               writeArray mem a b
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 3) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              571 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              572 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               sp <- readIORef spRef
               writeIORef spRef ((sp - 1) .&. 16777215)
               writeIORef bRef 319;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (578 - 1)) else return ()

              573 -> do
               writeIORef bRef 320;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (575 - 1)) else return ()

              574 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              575 -> do
               catch (do
                    a <- fmap ord getChar
                    writeIORef aRef a
                 )
                 (\(SomeException e) -> writeIORef aRef 0)
               a <- readIORef aRef
               if (a /= 0) then (writeIORef pcRef (577 - 1)) else return ()

              576 -> do
               writeIORef aRef 16777215;

              577 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               writeIORef bRef 320;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              578 -> do
               writeIORef bRef 319;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               writeIORef bRef 319;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 16777215) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              579 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              580 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 581;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (572 - 1)) else return ()

              581 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              582 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              583 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef bRef 319;
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef (if a == b then 1 else 0)
               a <- readIORef aRef
               if (a == 0) then (writeIORef pcRef (585 - 1)) else return ()

              584 -> do
               bp <- readIORef bpRef
               writeIORef bRef bp;
               b <- readIORef bRef
               writeIORef bRef ((b + 2) .&. 16777215)
               b <- readIORef bRef
               a <- readArray mem b
               writeIORef aRef a
               writeIORef bRef 319;
               a <- readIORef aRef
               b <- readIORef bRef
               writeArray mem b a
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              585 -> do
               writeIORef aRef 0;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 1;
               a <- readIORef aRef
               writeIORef bRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               b <- readIORef bRef
               writeIORef aRef ((a - b) .&. 16777215)
               a <- readIORef aRef
               writeIORef bRef a;
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              586 -> do
               bp <- readIORef bpRef
               writeIORef spRef bp;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               writeIORef bpRef a;
               sp <- readIORef spRef
               a <- readArray mem sp
               writeIORef aRef a
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               a <- readIORef aRef
               if (True) then (writeIORef pcRef (a - 1)) else return ()

              587 -> do
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               bp <- readIORef bpRef
               d <- readIORef dRef
               writeArray mem d bp
               d <- readIORef dRef
               writeIORef spRef d;
               sp <- readIORef spRef
               writeIORef bpRef sp;
               writeIORef aRef 321;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               writeIORef aRef 588;
               sp <- readIORef spRef
               writeIORef dRef sp;
               d <- readIORef dRef
               writeIORef dRef ((d + 16777215) .&. 16777215)
               a <- readIORef aRef
               d <- readIORef dRef
               writeArray mem d a
               d <- readIORef dRef
               writeIORef spRef d;
               if (True) then (writeIORef pcRef (471 - 1)) else return ()

              588 -> do
               b <- readIORef bRef
               writeIORef aRef b;
               sp <- readIORef spRef
               writeIORef spRef ((sp + 1) .&. 16777215)
               exitSuccess
             modifyIORef pcRef (+1)
             whileLoop
            else return ()
      whileLoop
 init0

 let mainLoop :: IO ()
     mainLoop = do
      pc <- readIORef pcRef
      case pc `div` 128 .|. 0 of
       0 -> func0
       1 -> func1
       2 -> func2
       3 -> func3
       4 -> func4
      mainLoop
 mainLoop
