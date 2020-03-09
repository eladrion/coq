(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *   INRIA, CNRS and contributors - Copyright 1999-2019       *)
(* <O___,, *       (see CREDITS file for the list of authors)           *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

Require Import ZifyClasses ZifyInst.
Declare ML Module "zify_plugin".

(** [zify_post_hook] is there to be redefined. *)
Ltac zify_post_hook := idtac.

Ltac iter_specs := zify_iter_specs.

Ltac zify := intros;
             zify_elim_let ;
             zify_op ;
             (zify_iter_specs) ;
             zify_saturate ; zify_post_hook.