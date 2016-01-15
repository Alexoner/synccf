#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
brew install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1" # package failed to install.
}
brew tap caskroom/cask
brew tap homebrew/dupes
brew tap homebrew/fuse
brew tap homebrew/php
brew tap homebrew/python
brew tap homebrew/science
brew tap homebrew/versions
brew tap neovim/neovim
install_package ansiweather ''
install_package ant ''
install_package arpack ''
install_package autoconf ''
install_package automake ''
install_package boost ''
install_package brew-cask ''
install_package cabal-install ''
install_package cairo ''
install_package clang-format ''
install_package cloog018 ''
install_package cmake ''
install_package cscope ''
install_package ctags ''
install_package docker ''
install_package ext4fuse ''
install_package fftw ''
install_package fontconfig '  --universal'
install_package freetype '  --universal'
install_package gcc ''
install_package gcc49 ''
install_package gd '  --universal'
install_package gdbm ''
install_package gettext ''
install_package gflags ''
install_package ghc ''
install_package git ''
install_package gl2ps ''
install_package glib ''
install_package glog ''
install_package glpk ''
install_package gmp ''
install_package gmp4 ''
install_package gnuplot '  --with-qt --with-aquaterm --with-x11'
install_package go ''
install_package graphicsmagick ''
install_package hdf5 ''
install_package htop-osx ''
install_package icu4c ''
install_package ilmbase ''
install_package imagemagick ''
install_package isl ''
install_package isl011 ''
install_package jasper '  --universal'
install_package jbig2dec ''
install_package jpeg '  --universal'
install_package jq ''
install_package leveldb ''
install_package libevent ''
install_package libffi ''
install_package libgphoto2 '  --universal'
install_package libicns '  --universal'
install_package libmpc ''
install_package libmpc08 ''
install_package libpng '  --universal
  --universal'
install_package libssh2 ''
install_package libtasn1 ''
install_package libtiff '  --universal'
install_package libtool '  --universal'
install_package libusb '  --universal'
install_package libusb-compat '  --universal'
install_package little-cms2 '  --universal'
install_package llvm ''
install_package lmdb ''
install_package lua ''
install_package makedepend ''
install_package mpfr ''
install_package mpfr2 ''
install_package mysql ''
install_package neovim ''
install_package ninja ''
install_package node ''
install_package numpy ''
install_package oniguruma ''
install_package opencv ''
install_package openexr ''
install_package openssl '  --universal'
install_package p7zip ''
install_package pandoc ''
install_package pcre ''
install_package pgformatter ''
install_package phantomjs ''
install_package pixman ''
install_package pkg-config ''
install_package plotutils ''
install_package privoxy ''
install_package protobuf ''
install_package pstree ''
install_package pypy ''
install_package pypy3 ''
install_package pyqt ''
install_package python3 ''
install_package qhull ''
install_package qrupdate ''
install_package qscintilla2 ''
install_package qt ''
install_package r ''
install_package readline ''
install_package redis ''
install_package rmtrash ''
install_package sane-backends '  --universal'
install_package sbt ''
install_package selenium-server-standalone ''
install_package shellcheck ''
install_package sip ''
install_package snappy ''
install_package sphinx ''
install_package sqlite ''
install_package subversion ''
install_package suite-sparse421 ''
install_package szip ''
install_package tbb ''
install_package texinfo ''
install_package the_silver_searcher ''
install_package tidy-html5 ''
install_package tmux ''
install_package tree ''
install_package veclibfort ''
install_package vim '  --with-lua
  --with-lua'
install_package wget ''
install_package wine ''
install_package xz ''
install_package zeromq ''
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
