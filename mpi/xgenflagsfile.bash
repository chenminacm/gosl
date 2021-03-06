#!/bin/bash

set -e

CFLAGS=`mpicc -showme:compile`
LDFLAGS=`mpicc -showme:link`

FLAGS_FILE="flags.go"

echo "// Copyright 2016 The Gosl Authors. All rights reserved." > $FLAGS_FILE
echo "// Use of this source code is governed by a BSD-style" >> $FLAGS_FILE
echo "// license that can be found in the LICENSE file." >> $FLAGS_FILE
echo "" >> $FLAGS_FILE
echo "package mpi" >> $FLAGS_FILE
echo "" >> $FLAGS_FILE
echo "/*" >> $FLAGS_FILE
echo "#cgo CFLAGS: $CFLAGS" >> $FLAGS_FILE
echo "#cgo LDFLAGS: $LDFLAGS" >> $FLAGS_FILE
echo "*/" >> $FLAGS_FILE
echo "import \"C\"" >> $FLAGS_FILE
