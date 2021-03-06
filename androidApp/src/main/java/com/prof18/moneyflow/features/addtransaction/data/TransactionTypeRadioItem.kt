package com.prof18.moneyflow.features.addtransaction.data

import androidx.annotation.StringRes
import data.db.model.TransactionType

data class TransactionTypeRadioItem(
    @StringRes val transactionTypeLabel: Int,
    val transactionType: TransactionType
)
