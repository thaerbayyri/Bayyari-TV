package com.bayyari.tv.domain.model

data class Category(
    val id: String,
    val name: String,
    val kind: String,
    val count: Int = 0
)
