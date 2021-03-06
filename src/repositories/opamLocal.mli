(**************************************************************************)
(*                                                                        *)
(*    Copyright 2012-2013 OCamlPro                                        *)
(*    Copyright 2012 INRIA                                                *)
(*                                                                        *)
(*  All rights reserved.This file is distributed under the terms of the   *)
(*  GNU Lesser General Public License version 3.0 with linking            *)
(*  exception.                                                            *)
(*                                                                        *)
(*  OPAM is distributed in the hope that it will be useful, but WITHOUT   *)
(*  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY    *)
(*  or FITNESS FOR A PARTICULAR PURPOSE.See the GNU General Public        *)
(*  License for more details.                                             *)
(*                                                                        *)
(**************************************************************************)

(** Rsync repository backend *)
open OpamTypes

val rsync_dirs: ?args:string list -> OpamFilename.Dir.t -> OpamFilename.Dir.t ->
  OpamFilename.Dir.t download OpamProcess.job
val rsync_file: ?args:string list -> OpamFilename.t -> OpamFilename.t ->
  OpamFilename.t download OpamProcess.job

val register: unit -> unit
